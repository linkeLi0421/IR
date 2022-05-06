; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.143, i32, i32, i32, i32, i32, i32, %union.anon.147, i32, i32, [11 x i32], %union.anon.151 }>
%union.anon.143 = type { %struct.anon.146 }
%struct.anon.146 = type { i64 }
%union.anon.147 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, i32, i8 }
%union.anon.151 = type <{ %struct.anon.153, [12 x i8] }>
%struct.anon.153 = type { i48 }
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
%struct.gk104_ram = type { %struct.nvkm_ram, %struct.gk104_ramfuc, %struct.list_head, i32, i32, i32, %struct.nvbios_ramcfg, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gk104_ramfuc = type { %struct.ramfuc, %struct.nvbios_pll, %struct.nvbios_pll, %struct.ramfuc_reg, [2 x i32], %struct.ramfuc_reg, [2 x i32], %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, [16 x %struct.ramfuc_reg], %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg }
%struct.ramfuc = type { ptr, ptr, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.111, %struct.anon.111 }
%struct.anon.111 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.ramfuc_reg = type { i32, i8, i32, i32, i32, i32 }
%struct.nvbios_M0205E = type { i8 }
%struct.nvbios_M0205S = type { i8 }
%struct.nvbios_M0209E = type { i8, i8, i8, i8, i8, i8 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.gk104_ram_train = type { i16, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S }
%struct.nvbios_M0209S = type { [512 x i32] }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@.str = private unnamed_addr constant [10 x i8] c"NvMemExec\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: failed to parse ramcfg data\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: mclk refpll data not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: mclk pll data not found\0A\00", align 1
@gk104_ram = internal constant %struct.nvkm_ram_func { i64 8589934592, ptr @gf100_ram_probe_fbp, ptr @gf108_ram_probe_fbp_amount, ptr @gf100_ram_probe_fbpa_amount, ptr @gk104_ram_dtor, ptr @gk104_ram_init, ptr @gk104_ram_calc, ptr @gk104_ram_prog, ptr @gk104_ram_tidy }, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: ramcfg data for %dMHz not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: unable to calc plls\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"%s: successfully calced PLLs for clock %i kHz (refclock: %i kHz)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s: unable to calc refpll\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%s: missing link training data\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.gk104_ram_calc_sddr3 = private unnamed_addr constant [4 x i32] [i32 -2146892832, i32 591840, i32 -2146892064, i32 -2146891872], align 4
@switch.table.gk104_ram_calc_sddr3.9 = private unnamed_addr constant [4 x i32] [i32 -2146892320, i32 -2147416096, i32 -2146891936, i32 -2146891840], align 4
@switch.table.gk104_ram_calc_gddr5 = private unnamed_addr constant [4 x i32] [i32 -2146499616, i32 985056, i32 -2146498848, i32 -2146498656], align 4
@switch.table.gk104_ram_calc_gddr5.10 = private unnamed_addr constant [4 x i32] [i32 -2146499104, i32 -2147022880, i32 -2146498720, i32 -2146498624], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_ram_calc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 15
  %4 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %95

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_fb, ptr %9, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 43
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @nvkm_clk_read(ptr noundef %13, i32 noundef 18) #11
  %15 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %8, align 4
  %17 = udiv i32 %14, 1000
  %18 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %33, label %21

21:                                               ; preds = %30, %7
  %22 = phi ptr [ %31, %30 ], [ %19, %7 ]
  %23 = getelementptr inbounds %struct.nvkm_ram_data, ptr %22, i32 0, i32 1, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %17, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nvkm_ram_data, ptr %22, i32 0, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %17, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %22, align 4
  %32 = icmp eq ptr %31, %18
  br i1 %32, label %33, label %21

33:                                               ; preds = %30, %7
  %34 = getelementptr inbounds %struct.nvkm_fb, ptr %16, i32 0, i32 1, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %400, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nvkm_fb, ptr %16, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.nvkm_fb, ptr %16, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.4, ptr noundef %42, i32 noundef %17) #12
  br label %400

43:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %15, ptr noundef align 4 dereferenceable(144) %22, i32 140, i1 false) #11
  %44 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 14, i32 2
  store i32 %14, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16
  %46 = udiv i32 %1, 1000
  br label %47

47:                                               ; preds = %56, %43
  %48 = phi ptr [ %57, %56 ], [ %19, %43 ]
  %49 = getelementptr inbounds %struct.nvkm_ram_data, ptr %48, i32 0, i32 1, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %46, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.nvkm_ram_data, ptr %48, i32 0, i32 1, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %46, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52, %47
  %57 = load ptr, ptr %48, align 4
  %58 = icmp eq ptr %57, %18
  br i1 %58, label %59, label %47

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.nvkm_fb, ptr %16, i32 0, i32 1, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %400, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.nvkm_fb, ptr %16, i32 0, i32 1, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nvkm_fb, ptr %16, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.4, ptr noundef %68, i32 noundef %46) #12
  br label %400

69:                                               ; preds = %52
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %45, ptr noundef align 4 dereferenceable(144) %48, i32 140, i1 false) #11
  %70 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 2
  store i32 %1, ptr %70, align 4
  %71 = icmp ugt i32 %14, %1
  %72 = select i1 %71, ptr %45, ptr %15
  %73 = select i1 %71, ptr %15, ptr %45
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %3, ptr noundef align 4 dereferenceable(144) %72, i32 144, i1 false)
  %74 = getelementptr inbounds %struct.nvkm_ram_data, ptr %73, i32 0, i32 1, i32 11
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 512
  %77 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 15, i32 1, i32 11
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, -513
  %80 = or i32 %79, %76
  store i32 %80, ptr %77, align 4
  %81 = load i32, ptr %74, align 4
  %82 = and i32 %81, 384
  %83 = and i32 %80, -385
  %84 = or i32 %83, %82
  store i32 %84, ptr %77, align 4
  %85 = getelementptr inbounds %struct.nvkm_ram_data, ptr %73, i32 0, i32 1, i32 15
  %86 = load i64, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 15, i32 1, i32 15
  %88 = load i64, ptr %87, align 4
  %89 = and i64 %86, 469762048
  %90 = and i64 %88, -469762049
  %91 = or i64 %90, %89
  store i64 %91, ptr %87, align 4
  %92 = tail call i32 @bcmp(ptr noundef dereferenceable(132) %3, ptr noundef dereferenceable(132) %15, i32 132)
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, ptr %45, ptr %3
  br label %102

95:                                               ; preds = %2
  %96 = icmp eq ptr %5, %3
  br i1 %96, label %98, label %97, !prof !8

97:                                               ; preds = %95
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgk104.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1147, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16
  %100 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %98, %69
  %103 = phi ptr [ %101, %98 ], [ %16, %69 ]
  %104 = phi ptr [ %99, %98 ], [ %94, %69 ]
  store ptr %104, ptr %4, align 8
  %105 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1
  %106 = getelementptr inbounds %struct.nvkm_fb, ptr %103, i32 0, i32 1
  %107 = getelementptr inbounds %struct.nvkm_fb, ptr %103, i32 0, i32 1, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 39
  %110 = load ptr, ptr %109, align 8
  %111 = tail call i32 @nvkm_memx_init(ptr noundef %110, ptr noundef %105) #11
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %400

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  %117 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %103, ptr %117, align 4
  %118 = getelementptr inbounds %struct.nvkm_ram_data, ptr %104, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 1, i32 7, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %119, %121
  %123 = select i1 %122, i32 2, i32 1
  %124 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 8
  store i32 %123, ptr %124, align 8
  %125 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, %116
  br i1 %127, label %128, label %131

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  %130 = load i32, ptr %129, align 4
  br label %141

131:                                              ; preds = %113
  %132 = load ptr, ptr %107, align 4
  %133 = getelementptr inbounds %struct.nvkm_device, ptr %132, i32 0, i32 11
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr i8, ptr %134, i32 %136
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %139 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %138, ptr %139, align 4
  %140 = load i32, ptr %124, align 8
  br label %141

141:                                              ; preds = %131, %128
  %142 = phi i32 [ %123, %128 ], [ %140, %131 ]
  %143 = phi i32 [ %130, %128 ], [ %138, %131 ]
  %144 = and i32 %143, 15
  %145 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 7
  store i32 %144, ptr %145, align 4
  %146 = load i32, ptr %118, align 4
  %147 = icmp eq i32 %142, 2
  br i1 %147, label %148, label %338

148:                                              ; preds = %141
  %149 = load ptr, ptr %107, align 4
  %150 = getelementptr inbounds %struct.nvkm_device, ptr %149, i32 0, i32 18
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 9
  %153 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 11
  %154 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 12
  %155 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 13
  %156 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 14
  %157 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 15
  store i32 1, ptr %153, align 4
  store i32 1, ptr %156, align 4
  store i32 1, ptr %157, align 4
  %158 = shl i32 %151, 12
  %159 = ashr i32 %158, 13
  %160 = mul i32 %151, 37
  %161 = add i32 %159, %160
  %162 = mul i32 %151, 38
  %163 = add i32 %159, %162
  %164 = mul i32 %151, 39
  %165 = add i32 %159, %164
  %166 = mul i32 %151, 40
  %167 = add i32 %159, %166
  %168 = mul i32 %151, 41
  %169 = add i32 %159, %168
  %170 = mul i32 %151, 42
  %171 = add i32 %159, %170
  %172 = mul i32 %151, 43
  %173 = add i32 %159, %172
  br label %174

174:                                              ; preds = %294, %148
  %175 = phi i1 [ false, %148 ], [ %296, %294 ]
  %176 = phi i32 [ 7, %148 ], [ %297, %294 ]
  %177 = phi i32 [ %146, %148 ], [ %295, %294 ]
  %178 = sdiv i32 %161, %176
  %179 = sdiv i32 %146, %178
  %180 = mul i32 %179, %178
  %181 = sub i32 %146, %180
  %182 = icmp slt i32 %181, %177
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  store i32 %179, ptr %155, align 4
  store i32 37, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %184

184:                                              ; preds = %183, %174
  %185 = phi i32 [ %181, %183 ], [ %177, %174 ]
  %186 = phi i1 [ false, %183 ], [ %175, %174 ]
  %187 = add i32 %179, 1
  %188 = mul i32 %187, %178
  %189 = sub i32 %188, %146
  %190 = icmp slt i32 %189, %185
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  store i32 %187, ptr %155, align 4
  store i32 37, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %192

192:                                              ; preds = %191, %184
  %193 = phi i32 [ %189, %191 ], [ %185, %184 ]
  %194 = phi i1 [ true, %191 ], [ %186, %184 ]
  %195 = sdiv i32 %163, %176
  %196 = sdiv i32 %146, %195
  %197 = mul i32 %196, %195
  %198 = sub i32 %146, %197
  %199 = icmp slt i32 %198, %193
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  store i32 %196, ptr %155, align 4
  store i32 38, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %201

201:                                              ; preds = %200, %192
  %202 = phi i32 [ %198, %200 ], [ %193, %192 ]
  %203 = phi i1 [ false, %200 ], [ %194, %192 ]
  %204 = add i32 %196, 1
  %205 = mul i32 %204, %195
  %206 = sub i32 %205, %146
  %207 = icmp slt i32 %206, %202
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  store i32 %204, ptr %155, align 4
  store i32 38, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %209

209:                                              ; preds = %208, %201
  %210 = phi i32 [ %206, %208 ], [ %202, %201 ]
  %211 = phi i1 [ true, %208 ], [ %203, %201 ]
  %212 = sdiv i32 %165, %176
  %213 = sdiv i32 %146, %212
  %214 = mul i32 %213, %212
  %215 = sub i32 %146, %214
  %216 = icmp slt i32 %215, %210
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  store i32 %213, ptr %155, align 4
  store i32 39, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %218

218:                                              ; preds = %217, %209
  %219 = phi i32 [ %215, %217 ], [ %210, %209 ]
  %220 = phi i1 [ false, %217 ], [ %211, %209 ]
  %221 = add i32 %213, 1
  %222 = mul i32 %221, %212
  %223 = sub i32 %222, %146
  %224 = icmp slt i32 %223, %219
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  store i32 %221, ptr %155, align 4
  store i32 39, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %226

226:                                              ; preds = %225, %218
  %227 = phi i32 [ %223, %225 ], [ %219, %218 ]
  %228 = phi i1 [ true, %225 ], [ %220, %218 ]
  %229 = sdiv i32 %167, %176
  %230 = sdiv i32 %146, %229
  %231 = mul i32 %230, %229
  %232 = sub i32 %146, %231
  %233 = icmp slt i32 %232, %227
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  store i32 %230, ptr %155, align 4
  store i32 40, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %235

235:                                              ; preds = %234, %226
  %236 = phi i32 [ %232, %234 ], [ %227, %226 ]
  %237 = phi i1 [ false, %234 ], [ %228, %226 ]
  %238 = add i32 %230, 1
  %239 = mul i32 %238, %229
  %240 = sub i32 %239, %146
  %241 = icmp slt i32 %240, %236
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  store i32 %238, ptr %155, align 4
  store i32 40, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %243

243:                                              ; preds = %242, %235
  %244 = phi i32 [ %240, %242 ], [ %236, %235 ]
  %245 = phi i1 [ true, %242 ], [ %237, %235 ]
  %246 = sdiv i32 %169, %176
  %247 = sdiv i32 %146, %246
  %248 = mul i32 %247, %246
  %249 = sub i32 %146, %248
  %250 = icmp slt i32 %249, %244
  br i1 %250, label %251, label %252

251:                                              ; preds = %243
  store i32 %247, ptr %155, align 4
  store i32 41, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %252

252:                                              ; preds = %251, %243
  %253 = phi i32 [ %249, %251 ], [ %244, %243 ]
  %254 = phi i1 [ false, %251 ], [ %245, %243 ]
  %255 = add i32 %247, 1
  %256 = mul i32 %255, %246
  %257 = sub i32 %256, %146
  %258 = icmp slt i32 %257, %253
  br i1 %258, label %259, label %260

259:                                              ; preds = %252
  store i32 %255, ptr %155, align 4
  store i32 41, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %260

260:                                              ; preds = %259, %252
  %261 = phi i32 [ %257, %259 ], [ %253, %252 ]
  %262 = phi i1 [ true, %259 ], [ %254, %252 ]
  %263 = sdiv i32 %171, %176
  %264 = sdiv i32 %146, %263
  %265 = mul i32 %264, %263
  %266 = sub i32 %146, %265
  %267 = icmp slt i32 %266, %261
  br i1 %267, label %268, label %269

268:                                              ; preds = %260
  store i32 %264, ptr %155, align 4
  store i32 42, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %269

269:                                              ; preds = %268, %260
  %270 = phi i32 [ %266, %268 ], [ %261, %260 ]
  %271 = phi i1 [ false, %268 ], [ %262, %260 ]
  %272 = add i32 %264, 1
  %273 = mul i32 %272, %263
  %274 = sub i32 %273, %146
  %275 = icmp slt i32 %274, %270
  br i1 %275, label %276, label %277

276:                                              ; preds = %269
  store i32 %272, ptr %155, align 4
  store i32 42, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %277

277:                                              ; preds = %276, %269
  %278 = phi i32 [ %274, %276 ], [ %270, %269 ]
  %279 = phi i1 [ true, %276 ], [ %271, %269 ]
  %280 = sdiv i32 %173, %176
  %281 = sdiv i32 %146, %280
  %282 = mul i32 %281, %280
  %283 = sub i32 %146, %282
  %284 = icmp slt i32 %283, %278
  br i1 %284, label %285, label %286

285:                                              ; preds = %277
  store i32 %281, ptr %155, align 4
  store i32 43, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %286

286:                                              ; preds = %285, %277
  %287 = phi i32 [ %283, %285 ], [ %278, %277 ]
  %288 = phi i1 [ false, %285 ], [ %279, %277 ]
  %289 = add i32 %281, 1
  %290 = mul i32 %289, %280
  %291 = sub i32 %290, %146
  %292 = icmp slt i32 %291, %287
  br i1 %292, label %293, label %294

293:                                              ; preds = %286
  store i32 %289, ptr %155, align 4
  store i32 43, ptr %152, align 4
  store i32 %176, ptr %154, align 4
  br label %294

294:                                              ; preds = %293, %286
  %295 = phi i32 [ %291, %293 ], [ %287, %286 ]
  %296 = phi i1 [ true, %293 ], [ %288, %286 ]
  %297 = add nsw i32 %176, -1
  %298 = icmp ugt i32 %297, 4
  br i1 %298, label %174, label %299

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 10
  %301 = load i32, ptr %155, align 4
  %302 = sdiv i32 %295, %301
  %303 = load i32, ptr %154, align 4
  %304 = shl i32 %302, 13
  %305 = mul i32 %304, %303
  %306 = sdiv i32 %305, %151
  %307 = sub i32 1, %306
  %308 = select i1 %296, i32 %307, i32 %306
  %309 = and i32 %308, 65535
  store i32 %309, ptr %300, align 4
  %310 = load i32, ptr %152, align 4
  %311 = mul i32 %310, %151
  %312 = add i32 %308, 4096
  %313 = and i32 %312, 65535
  %314 = mul i32 %313, %151
  %315 = ashr i32 %314, 13
  %316 = add i32 %315, %311
  %317 = sdiv i32 %316, %303
  %318 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 2, i32 2
  store i32 %317, ptr %318, align 4
  %319 = icmp slt i32 %317, 1
  %320 = getelementptr inbounds %struct.nvkm_fb, ptr %103, i32 0, i32 1, i32 5
  %321 = load i32, ptr %320, align 4
  br i1 %319, label %322, label %329

322:                                              ; preds = %299
  %323 = icmp eq i32 %321, 0
  br i1 %323, label %400, label %324

324:                                              ; preds = %322
  %325 = load ptr, ptr %107, align 4
  %326 = getelementptr inbounds %struct.nvkm_device, ptr %325, i32 0, i32 2
  %327 = load ptr, ptr %326, align 8
  %328 = getelementptr inbounds %struct.nvkm_fb, ptr %103, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %327, ptr noundef nonnull @.str.5, ptr noundef %328) #12
  br label %400

329:                                              ; preds = %299
  %330 = icmp ugt i32 %321, 3
  br i1 %330, label %332, label %331

331:                                              ; preds = %338, %332, %329
  br label %356

332:                                              ; preds = %329
  %333 = load ptr, ptr %107, align 4
  %334 = getelementptr inbounds %struct.nvkm_device, ptr %333, i32 0, i32 2
  %335 = load ptr, ptr %334, align 8
  %336 = getelementptr inbounds %struct.nvkm_fb, ptr %103, i32 0, i32 1, i32 4
  %337 = load i32, ptr %118, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %335, ptr noundef nonnull @.str.6, ptr noundef %336, i32 noundef %337, i32 noundef %317) #12
  br label %331

338:                                              ; preds = %141
  %339 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 1
  %340 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 9
  %341 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 10
  %342 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 11
  %343 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 12
  %344 = tail call i32 @gt215_pll_calc(ptr noundef %106, ptr noundef %339, i32 noundef %146, ptr noundef %340, ptr noundef %341, ptr noundef %342, ptr noundef %343) #11
  %345 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 2, i32 2
  store i32 %344, ptr %345, align 4
  %346 = icmp slt i32 %344, 1
  br i1 %346, label %347, label %331

347:                                              ; preds = %338
  %348 = getelementptr inbounds %struct.nvkm_fb, ptr %103, i32 0, i32 1, i32 5
  %349 = load i32, ptr %348, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %400, label %351

351:                                              ; preds = %347
  %352 = load ptr, ptr %107, align 4
  %353 = getelementptr inbounds %struct.nvkm_device, ptr %352, i32 0, i32 2
  %354 = load ptr, ptr %353, align 8
  %355 = getelementptr inbounds %struct.nvkm_fb, ptr %103, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %354, ptr noundef nonnull @.str.7, ptr noundef %355) #12
  br label %400

356:                                              ; preds = %381, %331
  %357 = phi i32 [ %382, %381 ], [ 0, %331 ]
  %358 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 %357, i32 2
  %359 = load i32, ptr %358, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %381, label %361

361:                                              ; preds = %356
  %362 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 %357
  %363 = load i32, ptr %362, align 4
  %364 = load i32, ptr %114, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %369

366:                                              ; preds = %361
  %367 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 %357, i32 5
  %368 = load i32, ptr %367, align 4
  br label %378

369:                                              ; preds = %361
  %370 = load ptr, ptr %117, align 4
  %371 = getelementptr inbounds %struct.nvkm_fb, ptr %370, i32 0, i32 1, i32 1
  %372 = load ptr, ptr %371, align 4
  %373 = getelementptr inbounds %struct.nvkm_device, ptr %372, i32 0, i32 11
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr i8, ptr %374, i32 %359
  %376 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %375) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %377 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 %357, i32 5
  store i32 %376, ptr %377, align 4
  br label %378

378:                                              ; preds = %369, %366
  %379 = phi i32 [ %368, %366 ], [ %376, %369 ]
  %380 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 %357
  store i32 %379, ptr %380, align 4
  br label %381

381:                                              ; preds = %378, %356
  %382 = add nuw nsw i32 %357, 1
  %383 = icmp eq i32 %382, 16
  br i1 %383, label %384, label %356

384:                                              ; preds = %381
  %385 = load i32, ptr %118, align 4
  %386 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 10
  store i32 %385, ptr %386, align 8
  %387 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 2
  %388 = load i32, ptr %387, align 8
  switch i32 %388, label %400 [
    i32 6, label %389
    i32 10, label %393
  ]

389:                                              ; preds = %384
  %390 = tail call i32 @nvkm_sddr3_calc(ptr noundef %0) #11
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %389
  tail call fastcc void @gk104_ram_calc_sddr3(ptr noundef %0) #11
  br label %400

393:                                              ; preds = %384
  %394 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 5
  %395 = load i32, ptr %394, align 4
  %396 = icmp ne i32 %395, 0
  %397 = tail call i32 @nvkm_gddr5_calc(ptr noundef %0, i1 noundef zeroext %396) #11
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %393
  tail call fastcc void @gk104_ram_calc_gddr5(ptr noundef %0) #11
  br label %400

400:                                              ; preds = %399, %393, %392, %389, %384, %351, %347, %324, %322, %102, %63, %59, %37, %33
  %401 = phi i32 [ -22, %324 ], [ -22, %322 ], [ -22, %351 ], [ -22, %347 ], [ 0, %399 ], [ %397, %393 ], [ 0, %392 ], [ %390, %389 ], [ -38, %384 ], [ %111, %102 ], [ -22, %37 ], [ -22, %33 ], [ -22, %63 ], [ -22, %59 ]
  ret i32 %401
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_ram_prog(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_fb, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %10, ptr noundef nonnull @.str, i1 noundef zeroext true) #11
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @nvkm_memx_fini(ptr noundef %2, i1 noundef zeroext false) #11
  store ptr null, ptr %13, align 4
  br label %27

18:                                               ; preds = %1
  tail call fastcc void @gk104_ram_prog_0(ptr noundef %0, i32 noundef 1000)
  %19 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @nvkm_memx_fini(ptr noundef %2, i1 noundef zeroext true) #11
  store ptr null, ptr %19, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.nvkm_ram_data, ptr %8, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  tail call fastcc void @gk104_ram_prog_0(ptr noundef %0, i32 noundef %26)
  br label %27

27:                                               ; preds = %24, %16, %12
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 15
  %30 = icmp eq ptr %28, %29
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gk104_ram_prog_0(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_fb, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = udiv i32 %1, 1000
  %8 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %214, label %11

11:                                               ; preds = %20, %2
  %12 = phi ptr [ %21, %20 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %7, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %7, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, %8
  br i1 %22, label %214, label %11

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 6, i32 4
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 4186112
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %30 = load i64, ptr %29, align 4
  %31 = trunc i64 %30 to i32
  %32 = lshr i32 %31, 1
  %33 = and i32 %32, 2093056
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i32 [ %33, %28 ], [ 0, %23 ]
  %36 = phi i32 [ 2093056, %28 ], [ 0, %23 ]
  %37 = and i64 %25, 8176
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %41 = load i64, ptr %40, align 4
  %42 = trunc i64 %41 to i32
  %43 = lshr i32 %42, 4
  %44 = and i32 %43, 511
  %45 = or i32 %44, %35
  %46 = or i32 %36, 511
  br label %47

47:                                               ; preds = %39, %34
  %48 = phi i32 [ %45, %39 ], [ %35, %34 ]
  %49 = phi i32 [ %46, %39 ], [ %36, %34 ]
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 1111144
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %54 = xor i32 %49, -1
  %55 = and i32 %53, %54
  %56 = or i32 %55, %48
  %57 = load ptr, ptr %50, align 4
  %58 = getelementptr i8, ptr %57, i32 1111144
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #11, !srcloc !13
  %59 = load i64, ptr %24, align 8
  %60 = and i64 %59, 4194304
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %64 = load i64, ptr %63, align 4
  %65 = trunc i64 %64 to i32
  %66 = lshr i32 %65, 22
  %67 = and i32 %66, 1
  br label %68

68:                                               ; preds = %62, %47
  %69 = phi i32 [ %67, %62 ], [ 0, %47 ]
  %70 = phi i32 [ -2, %62 ], [ -1, %47 ]
  %71 = load ptr, ptr %50, align 4
  %72 = getelementptr i8, ptr %71, i32 1111072
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %74 = and i32 %73, %70
  %75 = or i32 %74, %69
  %76 = load ptr, ptr %50, align 4
  %77 = getelementptr i8, ptr %76, i32 1111072
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #11, !srcloc !13
  %78 = load i64, ptr %24, align 8
  %79 = and i64 %78, 8388608
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %83 = load i64, ptr %82, align 4
  %84 = trunc i64 %83 to i32
  %85 = lshr i32 %84, 23
  %86 = and i32 %85, 1
  br label %87

87:                                               ; preds = %81, %68
  %88 = phi i32 [ %86, %81 ], [ 0, %68 ]
  %89 = phi i32 [ -2, %81 ], [ -1, %68 ]
  %90 = load ptr, ptr %50, align 4
  %91 = getelementptr i8, ptr %90, i32 1111088
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %93 = and i32 %92, %89
  %94 = or i32 %93, %88
  %95 = load ptr, ptr %50, align 4
  %96 = getelementptr i8, ptr %95, i32 1111088
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #11, !srcloc !13
  %97 = load i64, ptr %24, align 8
  %98 = and i64 %97, 520093696
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %102 = load i64, ptr %101, align 4
  %103 = trunc i64 %102 to i32
  %104 = lshr i32 %103, 24
  %105 = and i32 %104, 31
  br label %106

106:                                              ; preds = %100, %87
  %107 = phi i32 [ %105, %100 ], [ 0, %87 ]
  %108 = phi i32 [ -32, %100 ], [ -1, %87 ]
  %109 = load ptr, ptr %50, align 4
  %110 = getelementptr i8, ptr %109, i32 1111040
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %112 = and i32 %111, %108
  %113 = or i32 %112, %107
  %114 = load ptr, ptr %50, align 4
  %115 = getelementptr i8, ptr %114, i32 1111040
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #11, !srcloc !13
  %116 = load i64, ptr %24, align 8
  %117 = and i64 %116, 536870912
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %121 = load i64, ptr %120, align 4
  %122 = trunc i64 %121 to i32
  %123 = lshr i32 %122, 20
  %124 = and i32 %123, 512
  br label %125

125:                                              ; preds = %119, %106
  %126 = phi i32 [ %124, %119 ], [ 0, %106 ]
  %127 = phi i32 [ -513, %119 ], [ -1, %106 ]
  %128 = load ptr, ptr %50, align 4
  %129 = getelementptr i8, ptr %128, i32 1111056
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %131 = and i32 %130, %127
  %132 = or i32 %131, %126
  %133 = load ptr, ptr %50, align 4
  %134 = getelementptr i8, ptr %133, i32 1111056
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #11, !srcloc !13
  %135 = load i64, ptr %24, align 8
  %136 = and i64 %135, 1095216660480
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %125
  %139 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %140 = load i64, ptr %139, align 4
  %141 = lshr i64 %140, 16
  %142 = trunc i64 %141 to i32
  %143 = and i32 %142, 16711680
  br label %144

144:                                              ; preds = %138, %125
  %145 = phi i32 [ %143, %138 ], [ 0, %125 ]
  %146 = phi i32 [ 16711680, %138 ], [ 0, %125 ]
  %147 = and i64 %135, 71776119061217280
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %151 = load i64, ptr %150, align 4
  %152 = lshr i64 %151, 40
  %153 = trunc i64 %152 to i32
  %154 = and i32 %153, 65280
  %155 = or i32 %154, %145
  %156 = or i32 %146, 65280
  br label %157

157:                                              ; preds = %149, %144
  %158 = phi i32 [ %155, %149 ], [ %145, %144 ]
  %159 = phi i32 [ %156, %149 ], [ %146, %144 ]
  %160 = load ptr, ptr %50, align 4
  %161 = getelementptr i8, ptr %160, i32 1111104
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %163 = xor i32 %159, -1
  %164 = and i32 %162, %163
  %165 = or i32 %164, %158
  %166 = load ptr, ptr %50, align 4
  %167 = getelementptr i8, ptr %166, i32 1111104
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #11, !srcloc !13
  %168 = load i64, ptr %24, align 8
  %169 = and i64 %168, 280375465082880
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %157
  %172 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %173 = load i64, ptr %172, align 4
  %174 = lshr i64 %173, 32
  %175 = trunc i64 %174 to i32
  %176 = and i32 %175, 65280
  br label %177

177:                                              ; preds = %171, %157
  %178 = phi i32 [ %176, %171 ], [ 0, %157 ]
  %179 = phi i32 [ 65280, %171 ], [ 0, %157 ]
  %180 = and i64 %168, 2147483648
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %184 = load i64, ptr %183, align 4
  %185 = trunc i64 %184 to i32
  %186 = lshr i32 %185, 24
  %187 = and i32 %186, 128
  %188 = or i32 %187, %178
  %189 = or i32 %179, 128
  br label %190

190:                                              ; preds = %182, %177
  %191 = phi i32 [ %188, %182 ], [ %178, %177 ]
  %192 = phi i32 [ %189, %182 ], [ %179, %177 ]
  %193 = and i64 %168, 1073741824
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.nvkm_ram_data, ptr %12, i32 0, i32 1, i32 4
  %197 = load i64, ptr %196, align 4
  %198 = trunc i64 %197 to i32
  %199 = lshr i32 %198, 25
  %200 = and i32 %199, 32
  %201 = or i32 %200, %191
  %202 = or i32 %192, 32
  br label %203

203:                                              ; preds = %195, %190
  %204 = phi i32 [ %201, %195 ], [ %191, %190 ]
  %205 = phi i32 [ %202, %195 ], [ %192, %190 ]
  %206 = load ptr, ptr %50, align 4
  %207 = getelementptr i8, ptr %206, i32 1111108
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %209 = xor i32 %205, -1
  %210 = and i32 %208, %209
  %211 = or i32 %210, %204
  %212 = load ptr, ptr %50, align 4
  %213 = getelementptr i8, ptr %212, i32 1111108
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %211) #11, !srcloc !13
  br label %214

214:                                              ; preds = %203, %20, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_ram_tidy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1
  %8 = tail call i32 @nvkm_memx_fini(ptr noundef %7, i1 noundef zeroext false) #11
  store ptr null, ptr %3, align 4
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_ram_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvbios_M0205E, align 1
  %3 = alloca %struct.nvbios_M0205S, align 1
  %4 = alloca %struct.nvbios_M0209E, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.nvbios_init, align 4
  %16 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 21
  %22 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  store i8 0, ptr %9, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 0, ptr %10, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 0, ptr %11, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 0, ptr %12, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #11
  store i8 0, ptr %13, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #11
  store i8 0, ptr %14, align 1, !annotation !14
  %23 = call i32 @nvbios_rammapTe(ptr noundef %22, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #11
  %24 = icmp eq i32 %23, 0
  %25 = load i8, ptr %10, align 1
  %26 = icmp ult i8 %25, 21
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %263, label %28

28:                                               ; preds = %1
  %29 = add i32 %23, 20
  %30 = call zeroext i8 @nvbios_rd08(ptr noundef %22, i32 noundef %29) #11
  store i8 %30, ptr %11, align 1
  %31 = add i32 %23, 16
  %32 = call i32 @nvbios_rd32(ptr noundef %22, i32 noundef %31) #11
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 1111644
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %37 = and i32 %36, 240
  %38 = load i8, ptr %11, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %73, label %40

40:                                               ; preds = %28
  %41 = lshr exact i32 %37, 4
  %42 = getelementptr inbounds %struct.nvbios_init, ptr %15, i32 0, i32 1
  %43 = getelementptr inbounds %struct.nvbios_init, ptr %15, i32 0, i32 2
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %15, i32 0, i32 3
  %45 = getelementptr inbounds %struct.nvbios_init, ptr %15, i32 0, i32 4
  %46 = getelementptr inbounds %struct.nvbios_init, ptr %15, i32 0, i32 5
  %47 = getelementptr inbounds %struct.nvbios_init, ptr %15, i32 0, i32 6
  %48 = getelementptr inbounds %struct.nvbios_init, ptr %15, i32 0, i32 7
  %49 = getelementptr inbounds i8, ptr %15, i32 4
  br label %50

50:                                               ; preds = %67, %40
  %51 = phi i8 [ %38, %40 ], [ %68, %67 ]
  %52 = phi i32 [ %32, %40 ], [ %70, %67 ]
  %53 = phi i32 [ 0, %40 ], [ %69, %67 ]
  %54 = icmp eq i32 %53, %41
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %33, align 4
  %57 = getelementptr i8, ptr %56, i32 1111644
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %59 = and i32 %58, -241
  %60 = shl i32 %53, 4
  %61 = or i32 %59, %60
  %62 = load ptr, ptr %33, align 4
  %63 = getelementptr i8, ptr %62, i32 1111644
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #11, !srcloc !13
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %15) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %49, i8 0, i32 40, i1 false), !annotation !14
  store ptr %18, ptr %15, align 4
  %64 = call i32 @nvbios_rd32(ptr noundef %22, i32 noundef %52) #11
  store i32 %64, ptr %42, align 4
  store ptr null, ptr %43, align 4
  store i32 -1, ptr %44, align 4
  store i32 0, ptr %45, align 4
  store i32 -1, ptr %46, align 4
  store i8 1, ptr %47, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  %65 = call i32 @nvbios_exec(ptr noundef nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %15) #11
  %66 = load i8, ptr %11, align 1
  br label %67

67:                                               ; preds = %55, %50
  %68 = phi i8 [ %51, %50 ], [ %66, %55 ]
  %69 = add nuw nsw i32 %53, 1
  %70 = add i32 %52, 4
  %71 = zext i8 %68 to i32
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %50, label %73

73:                                               ; preds = %67, %28
  %74 = load ptr, ptr %33, align 4
  %75 = getelementptr i8, ptr %74, i32 1111644
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %77 = and i32 %76, -241
  %78 = or i32 %77, %37
  %79 = load ptr, ptr %33, align 4
  %80 = getelementptr i8, ptr %79, i32 1111644
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #11, !srcloc !13
  %81 = load ptr, ptr %33, align 4
  %82 = getelementptr i8, ptr %81, i32 1111428
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %84 = and i32 %83, -285212673
  %85 = load ptr, ptr %33, align 4
  %86 = getelementptr i8, ptr %85, i32 1111428
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #11, !srcloc !13
  %87 = load ptr, ptr %33, align 4
  %88 = getelementptr i8, ptr %87, i32 1109184
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 -1) #11, !srcloc !13
  %89 = load ptr, ptr %33, align 4
  %90 = getelementptr i8, ptr %89, i32 1110368
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %92 = or i32 %91, 16
  %93 = load ptr, ptr %33, align 4
  %94 = getelementptr i8, ptr %93, i32 1110368
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #11, !srcloc !13
  %95 = load ptr, ptr %16, align 4
  %96 = getelementptr inbounds %struct.nvkm_fb, ptr %95, i32 0, i32 1
  %97 = call zeroext i8 @nvbios_ramcfg_index(ptr noundef %96) #11
  %98 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16388, i32 noundef 3520, i32 noundef 3) #13
  %99 = icmp eq ptr %98, null
  br i1 %99, label %263, label %100

100:                                              ; preds = %73
  %101 = getelementptr inbounds %struct.gk104_ram_train, ptr %98, i32 0, i32 1
  %102 = getelementptr inbounds %struct.gk104_ram_train, ptr %98, i32 0, i32 8
  %103 = getelementptr inbounds %struct.gk104_ram_train, ptr %98, i32 0, i32 7
  %104 = getelementptr inbounds %struct.gk104_ram_train, ptr %98, i32 0, i32 6
  %105 = getelementptr inbounds %struct.gk104_ram_train, ptr %98, i32 0, i32 5
  %106 = getelementptr inbounds %struct.gk104_ram_train, ptr %98, i32 0, i32 4
  %107 = getelementptr inbounds %struct.gk104_ram_train, ptr %98, i32 0, i32 3
  %108 = getelementptr inbounds %struct.gk104_ram_train, ptr %98, i32 0, i32 2
  %109 = zext i8 %97 to i32
  %110 = getelementptr inbounds %struct.nvbios_M0209E, ptr %4, i32 0, i32 4
  %111 = getelementptr inbounds %struct.nvbios_M0209E, ptr %4, i32 0, i32 5
  br label %112

112:                                              ; preds = %164, %100
  %113 = phi i32 [ 0, %100 ], [ %165, %164 ]
  %114 = load ptr, ptr %16, align 4
  %115 = getelementptr inbounds %struct.nvkm_fb, ptr %114, i32 0, i32 1, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 21
  %118 = load ptr, ptr %117, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #11, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  store i8 0, ptr %8, align 1, !annotation !14
  %119 = call i32 @nvbios_M0205Ep(ptr noundef %118, i32 noundef %113, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %2) #11
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %164, label %121

121:                                              ; preds = %112
  %122 = load i8, ptr %2, align 1
  switch i8 %122, label %164 [
    i8 0, label %129
    i8 1, label %123
    i8 4, label %124
    i8 6, label %125
    i8 7, label %126
    i8 8, label %127
    i8 9, label %128
  ]

123:                                              ; preds = %121
  br label %129

124:                                              ; preds = %121
  br label %129

125:                                              ; preds = %121
  br label %129

126:                                              ; preds = %121
  br label %129

127:                                              ; preds = %121
  br label %129

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %127, %126, %125, %124, %123, %121
  %130 = phi ptr [ %102, %128 ], [ %103, %127 ], [ %104, %126 ], [ %105, %125 ], [ %106, %124 ], [ %107, %123 ], [ %108, %121 ]
  %131 = call i32 @nvbios_M0205Sp(ptr noundef %118, i32 noundef %113, i32 noundef %109, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3) #11
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %163, label %133

133:                                              ; preds = %129
  %134 = load i8, ptr %3, align 1
  %135 = zext i8 %134 to i32
  %136 = call i32 @nvbios_M0209Ep(ptr noundef %118, i32 noundef %135, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %4) #11
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %163, label %138

138:                                              ; preds = %133
  %139 = call i32 @nvbios_M0209Sp(ptr noundef %118, i32 noundef %135, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %130) #11
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %163, label %141

141:                                              ; preds = %138
  %142 = load i8, ptr %110, align 1
  switch i8 %142, label %163 [
    i8 2, label %143
    i8 1, label %156
  ]

143:                                              ; preds = %141
  %144 = load i8, ptr %111, align 1
  %145 = zext i8 %144 to i32
  %146 = call i32 @nvbios_M0209Sp(ptr noundef %118, i32 noundef %145, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %101) #11
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %163, label %148

148:                                              ; preds = %148, %143
  %149 = phi i32 [ %154, %148 ], [ 0, %143 ]
  %150 = getelementptr [512 x i32], ptr %130, i32 0, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr [512 x i32], ptr %101, i32 0, i32 %151
  %153 = load i32, ptr %152, align 4
  store i32 %153, ptr %150, align 4
  %154 = add nuw nsw i32 %149, 1
  %155 = icmp eq i32 %154, 512
  br i1 %155, label %156, label %148

156:                                              ; preds = %148, %141
  %157 = load i8, ptr %2, align 1
  %158 = zext i8 %157 to i32
  %159 = shl nuw i32 1, %158
  %160 = load i16, ptr %98, align 4096
  %161 = trunc i32 %159 to i16
  %162 = or i16 %160, %161
  store i16 %162, ptr %98, align 4096
  br label %164

163:                                              ; preds = %143, %141, %138, %133, %129
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %167

164:                                              ; preds = %156, %121, %112
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %165 = add nuw nsw i32 %113, 1
  %166 = icmp eq i32 %165, 256
  br i1 %166, label %167, label %112

167:                                              ; preds = %164, %163
  %168 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 2
  %169 = load i32, ptr %168, align 8
  %170 = icmp eq i32 %169, 10
  br i1 %170, label %171, label %261

171:                                              ; preds = %167
  %172 = load ptr, ptr %16, align 4
  %173 = getelementptr inbounds %struct.nvkm_fb, ptr %172, i32 0, i32 1, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = load i16, ptr %98, align 4096
  %176 = and i16 %175, 979
  %177 = icmp eq i16 %176, 979
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.nvkm_device, ptr %174, i32 0, i32 11
  br label %188

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.nvkm_fb, ptr %172, i32 0, i32 1, i32 5
  %182 = load i32, ptr %181, align 4
  %183 = icmp ugt i32 %182, 1
  br i1 %183, label %184, label %261

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.nvkm_device, ptr %174, i32 0, i32 2
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr inbounds %struct.nvkm_fb, ptr %172, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %186, ptr noundef nonnull @.str.8, ptr noundef %187) #12
  br label %261

188:                                              ; preds = %188, %178
  %189 = phi i32 [ 0, %178 ], [ %239, %188 ]
  %190 = shl i32 %189, 8
  %191 = getelementptr [512 x i32], ptr %103, i32 0, i32 %189
  %192 = getelementptr [512 x i32], ptr %105, i32 0, i32 %189
  %193 = getelementptr [512 x i32], ptr %108, i32 0, i32 %189
  %194 = getelementptr [512 x i32], ptr %102, i32 0, i32 %189
  %195 = getelementptr [512 x i32], ptr %104, i32 0, i32 %189
  %196 = getelementptr [512 x i32], ptr %107, i32 0, i32 %189
  %197 = load ptr, ptr %179, align 4
  %198 = getelementptr i8, ptr %197, i32 1112424
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %190) #11, !srcloc !13
  %199 = load i32, ptr %191, align 4
  %200 = shl i32 %199, 4
  %201 = load i32, ptr %192, align 4
  %202 = or i32 %200, %201
  %203 = load ptr, ptr %179, align 4
  %204 = getelementptr i8, ptr %203, i32 1112352
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #11, !srcloc !13
  %205 = load i32, ptr %193, align 4
  %206 = load ptr, ptr %179, align 4
  %207 = getelementptr i8, ptr %206, i32 1112344
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %205) #11, !srcloc !13
  %208 = load i32, ptr %194, align 4
  %209 = shl i32 %208, 4
  %210 = load i32, ptr %195, align 4
  %211 = or i32 %210, %209
  %212 = or i32 %211, 256
  %213 = load ptr, ptr %179, align 4
  %214 = getelementptr i8, ptr %213, i32 1112352
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %212) #11, !srcloc !13
  %215 = load i32, ptr %196, align 4
  %216 = load ptr, ptr %179, align 4
  %217 = getelementptr i8, ptr %216, i32 1112344
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %215) #11, !srcloc !13
  %218 = load ptr, ptr %179, align 4
  %219 = getelementptr i8, ptr %218, i32 1112428
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %190) #11, !srcloc !13
  %220 = load i32, ptr %191, align 4
  %221 = shl i32 %220, 4
  %222 = load i32, ptr %192, align 4
  %223 = or i32 %221, %222
  %224 = load ptr, ptr %179, align 4
  %225 = getelementptr i8, ptr %224, i32 1112356
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #11, !srcloc !13
  %226 = load i32, ptr %193, align 4
  %227 = load ptr, ptr %179, align 4
  %228 = getelementptr i8, ptr %227, i32 1112348
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %226) #11, !srcloc !13
  %229 = load i32, ptr %194, align 4
  %230 = shl i32 %229, 4
  %231 = load i32, ptr %195, align 4
  %232 = or i32 %231, %230
  %233 = or i32 %232, 256
  %234 = load ptr, ptr %179, align 4
  %235 = getelementptr i8, ptr %234, i32 1112356
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %233) #11, !srcloc !13
  %236 = load i32, ptr %196, align 4
  %237 = load ptr, ptr %179, align 4
  %238 = getelementptr i8, ptr %237, i32 1112348
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %236) #11, !srcloc !13
  %239 = add nuw nsw i32 %189, 1
  %240 = icmp eq i32 %239, 48
  br i1 %240, label %241, label %188

241:                                              ; preds = %241, %188
  %242 = phi i32 [ %249, %241 ], [ 0, %188 ]
  %243 = load ptr, ptr %179, align 4
  %244 = getelementptr i8, ptr %243, i32 1112424
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %242) #11, !srcloc !13
  %245 = getelementptr [512 x i32], ptr %106, i32 0, i32 %242
  %246 = load i32, ptr %245, align 4
  %247 = load ptr, ptr %179, align 4
  %248 = getelementptr i8, ptr %247, i32 1112320
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %246) #11, !srcloc !13
  %249 = add nuw nsw i32 %242, 1
  %250 = icmp eq i32 %249, 256
  br i1 %250, label %251, label %241

251:                                              ; preds = %251, %241
  %252 = phi i32 [ %259, %251 ], [ 0, %241 ]
  %253 = load ptr, ptr %179, align 4
  %254 = getelementptr i8, ptr %253, i32 1112428
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 %252) #11, !srcloc !13
  %255 = getelementptr [512 x i32], ptr %106, i32 0, i32 %252
  %256 = load i32, ptr %255, align 4
  %257 = load ptr, ptr %179, align 4
  %258 = getelementptr i8, ptr %257, i32 1112324
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %256) #11, !srcloc !13
  %259 = add nuw nsw i32 %252, 1
  %260 = icmp eq i32 %259, 256
  br i1 %260, label %261, label %251

261:                                              ; preds = %251, %184, %180, %167
  %262 = phi i32 [ 0, %167 ], [ -22, %184 ], [ -22, %180 ], [ 0, %251 ]
  call void @kfree(ptr noundef nonnull %98) #11
  br label %263

263:                                              ; preds = %261, %73, %1
  %264 = phi i32 [ -22, %1 ], [ %262, %261 ], [ -12, %73 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  ret i32 %264
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapTe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gk104_ram_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %6) #11
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_ram_new_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.dcb_gpio_func, align 1
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
  %53 = alloca %struct.ramfuc_reg, align 4
  %54 = alloca %struct.ramfuc_reg, align 4
  %55 = alloca %struct.ramfuc_reg, align 4
  %56 = alloca %struct.ramfuc_reg, align 4
  %57 = alloca %struct.ramfuc_reg, align 4
  %58 = alloca %struct.ramfuc_reg, align 4
  %59 = alloca %struct.ramfuc_reg, align 4
  %60 = alloca %struct.ramfuc_reg, align 4
  %61 = alloca %struct.ramfuc_reg, align 4
  %62 = alloca %struct.ramfuc_reg, align 4
  %63 = alloca %struct.ramfuc_reg, align 4
  %64 = alloca %struct.ramfuc_reg, align 4
  %65 = alloca %struct.ramfuc_reg, align 4
  %66 = alloca %struct.ramfuc_reg, align 4
  %67 = alloca %struct.ramfuc_reg, align 4
  %68 = alloca %struct.ramfuc_reg, align 4
  %69 = alloca %struct.ramfuc_reg, align 4
  %70 = alloca %struct.ramfuc_reg, align 4
  %71 = alloca %struct.ramfuc_reg, align 4
  %72 = alloca %struct.ramfuc_reg, align 4
  %73 = alloca %struct.ramfuc_reg, align 4
  %74 = alloca %struct.ramfuc_reg, align 4
  %75 = alloca %struct.ramfuc_reg, align 4
  %76 = alloca %struct.ramfuc_reg, align 4
  %77 = alloca %struct.ramfuc_reg, align 4
  %78 = alloca %struct.ramfuc_reg, align 4
  %79 = alloca %struct.ramfuc_reg, align 4
  %80 = alloca %struct.ramfuc_reg, align 4
  %81 = alloca %struct.ramfuc_reg, align 4
  %82 = alloca %struct.ramfuc_reg, align 4
  %83 = alloca %struct.ramfuc_reg, align 4
  %84 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1
  %85 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 21
  %88 = load ptr, ptr %87, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %8, i8 0, i32 5, i1 false), !annotation !14
  %89 = tail call zeroext i8 @nvbios_ramcfg_index(ptr noundef %84) #11
  %90 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %91 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3520, i32 noundef 2800) #14
  %92 = icmp eq ptr %91, null
  br i1 %92, label %526, label %93

93:                                               ; preds = %3
  store ptr %91, ptr %2, align 4
  %94 = tail call i32 @gf100_ram_ctor(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %91) #11
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %526

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 2
  store volatile ptr %97, ptr %97, align 4
  %98 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 2, i32 1
  store ptr %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 140344
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %103 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 3
  store i32 %102, ptr %103, align 4
  %104 = load ptr, ptr %99, align 4
  %105 = getelementptr i8, ptr %104, i32 140628
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %107 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 4
  store i32 %106, ptr %107, align 8
  %108 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 5
  store i32 0, ptr %108, align 4
  %109 = load i32, ptr %103, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %145, %96
  %112 = getelementptr inbounds %struct.nvkm_ram, ptr %91, i32 0, i32 1
  %113 = zext i8 %89 to i32
  %114 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 6, i32 4
  %115 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 6, i32 11
  %116 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 6, i32 11, i32 0, i32 1
  %117 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 6, i32 15
  %118 = load ptr, ptr %112, align 4
  %119 = getelementptr inbounds %struct.nvkm_fb, ptr %118, i32 0, i32 1, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.nvkm_device, ptr %120, i32 0, i32 21
  %122 = load ptr, ptr %121, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !14
  %123 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %124 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %123, i32 noundef 3264, i32 noundef 144) #14
  %125 = icmp eq ptr %124, null
  br i1 %125, label %152, label %153

126:                                              ; preds = %150, %96
  %127 = phi i32 [ %151, %150 ], [ %106, %96 ]
  %128 = phi i32 [ %146, %150 ], [ 0, %96 ]
  %129 = phi i32 [ %147, %150 ], [ 0, %96 ]
  %130 = shl nuw i32 1, %129
  %131 = and i32 %127, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %126
  %134 = load ptr, ptr %99, align 4
  %135 = shl i32 %129, 12
  %136 = add i32 %135, 1114628
  %137 = getelementptr i8, ptr %134, i32 %136
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %139 = icmp eq i32 %128, 0
  %140 = icmp eq i32 %128, %138
  %141 = select i1 %139, i1 true, i1 %140
  br i1 %141, label %145, label %142

142:                                              ; preds = %133
  %143 = load i32, ptr %108, align 4
  %144 = or i32 %143, %130
  store i32 %144, ptr %108, align 4
  br label %145

145:                                              ; preds = %142, %133, %126
  %146 = phi i32 [ %128, %126 ], [ %128, %142 ], [ %138, %133 ]
  %147 = add nuw i32 %129, 1
  %148 = load i32, ptr %103, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %111

150:                                              ; preds = %145
  %151 = load i32, ptr %107, align 8
  br label %126

152:                                              ; preds = %364, %111
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %354

153:                                              ; preds = %364, %111
  %154 = phi ptr [ %372, %364 ], [ %124, %111 ]
  %155 = phi ptr [ %370, %364 ], [ %122, %111 ]
  %156 = phi i32 [ %365, %364 ], [ 0, %111 ]
  %157 = load ptr, ptr %98, align 8
  %158 = getelementptr inbounds %struct.nvkm_ram_data, ptr %154, i32 0, i32 1
  %159 = call i32 @nvbios_rammapEp(ptr noundef %155, i32 noundef %156, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %158) #11
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %374, label %161

161:                                              ; preds = %153
  %162 = load i8, ptr %4, align 1
  %163 = icmp ne i8 %162, 17
  %164 = load i8, ptr %5, align 1
  %165 = icmp ult i8 %164, 18
  %166 = select i1 %163, i1 true, i1 %165
  br i1 %166, label %352, label %167

167:                                              ; preds = %161
  %168 = load i8, ptr %6, align 1
  %169 = load i8, ptr %7, align 1
  %170 = call i32 @nvbios_rammapSp(ptr noundef %155, i32 noundef %159, i8 noundef zeroext 17, i8 noundef zeroext %164, i8 noundef zeroext %168, i8 noundef zeroext %169, i32 noundef %113, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %158) #11
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %352, label %172

172:                                              ; preds = %167
  %173 = load i8, ptr %4, align 1
  %174 = icmp ne i8 %173, 17
  %175 = load i8, ptr %5, align 1
  %176 = icmp ult i8 %175, 10
  %177 = select i1 %174, i1 true, i1 %176
  br i1 %177, label %352, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.nvkm_ram_data, ptr %154, i32 0, i32 1, i32 7
  %180 = load i32, ptr %179, align 8
  %181 = icmp eq i32 %180, 255
  br i1 %181, label %191, label %182

182:                                              ; preds = %178
  %183 = call i32 @nvbios_timingEp(ptr noundef %155, i32 noundef %180, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %158) #11
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %352, label %185

185:                                              ; preds = %182
  %186 = load i8, ptr %4, align 1
  %187 = icmp ne i8 %186, 32
  %188 = load i8, ptr %5, align 1
  %189 = icmp ult i8 %188, 51
  %190 = select i1 %187, i1 true, i1 %189
  br i1 %190, label %352, label %191

191:                                              ; preds = %185, %178
  %192 = load ptr, ptr %98, align 8
  store ptr %154, ptr %98, align 8
  store ptr %97, ptr %154, align 8
  %193 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %192, ptr %193, align 4
  store volatile ptr %154, ptr %192, align 4
  %194 = icmp eq i32 %156, 0
  br i1 %194, label %364, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.nvkm_ram_data, ptr %157, i32 0, i32 1, i32 4
  %197 = load i64, ptr %196, align 4
  %198 = getelementptr inbounds %struct.nvkm_ram_data, ptr %154, i32 0, i32 1, i32 4
  %199 = load i64, ptr %198, align 8
  %200 = xor i64 %199, %197
  %201 = and i64 %200, 4186112
  %202 = icmp eq i64 %201, 0
  %203 = load i64, ptr %114, align 8
  %204 = trunc i64 %203 to i32
  %205 = select i1 %202, i32 0, i32 8192
  %206 = and i32 %204, 4186112
  %207 = or i32 %205, %206
  %208 = zext i32 %207 to i64
  %209 = and i64 %203, -4186113
  %210 = or i64 %209, %208
  store i64 %210, ptr %114, align 8
  %211 = load i64, ptr %196, align 4
  %212 = xor i64 %211, %199
  %213 = and i64 %212, 8176
  %214 = icmp eq i64 %213, 0
  %215 = select i1 %214, i32 0, i32 16
  %216 = and i32 %204, 8176
  %217 = or i32 %215, %216
  %218 = zext i32 %217 to i64
  %219 = and i64 %210, -8177
  %220 = or i64 %219, %218
  store i64 %220, ptr %114, align 8
  %221 = load i64, ptr %196, align 4
  %222 = xor i64 %221, %199
  %223 = or i64 %222, %203
  %224 = and i64 %223, 4194304
  %225 = and i64 %220, -4194305
  %226 = or i64 %225, %224
  store i64 %226, ptr %114, align 8
  %227 = load i64, ptr %196, align 4
  %228 = xor i64 %227, %199
  %229 = or i64 %228, %203
  %230 = and i64 %229, 8388608
  %231 = and i64 %226, -8388609
  %232 = or i64 %231, %230
  store i64 %232, ptr %114, align 8
  %233 = load i64, ptr %196, align 4
  %234 = xor i64 %233, %199
  %235 = and i64 %234, 520093696
  %236 = icmp eq i64 %235, 0
  %237 = select i1 %236, i32 0, i32 16777216
  %238 = and i32 %204, 520093696
  %239 = or i32 %237, %238
  %240 = zext i32 %239 to i64
  %241 = and i64 %232, -520093697
  %242 = or i64 %241, %240
  store i64 %242, ptr %114, align 8
  %243 = load i64, ptr %196, align 4
  %244 = xor i64 %243, %199
  %245 = or i64 %244, %203
  %246 = and i64 %245, 536870912
  %247 = and i64 %242, -536870913
  %248 = or i64 %247, %246
  store i64 %248, ptr %114, align 8
  %249 = load i64, ptr %196, align 4
  %250 = xor i64 %249, %199
  %251 = and i64 %250, 1095216660480
  %252 = icmp ne i64 %251, 0
  %253 = zext i1 %252 to i32
  %254 = lshr i64 %203, 32
  %255 = trunc i64 %254 to i32
  %256 = and i32 %255, 255
  %257 = or i32 %256, %253
  %258 = zext i32 %257 to i64
  %259 = shl nuw nsw i64 %258, 32
  %260 = and i64 %248, -1095216660481
  %261 = or i64 %259, %260
  store i64 %261, ptr %114, align 8
  %262 = load i64, ptr %196, align 4
  %263 = xor i64 %262, %199
  %264 = and i64 %263, 71776119061217280
  %265 = icmp ne i64 %264, 0
  %266 = zext i1 %265 to i32
  %267 = lshr i64 %203, 48
  %268 = trunc i64 %267 to i32
  %269 = and i32 %268, 255
  %270 = or i32 %269, %266
  %271 = zext i32 %270 to i64
  %272 = shl nuw nsw i64 %271, 48
  %273 = and i64 %261, -71776119061217281
  %274 = or i64 %273, %272
  store i64 %274, ptr %114, align 8
  %275 = load i64, ptr %196, align 4
  %276 = xor i64 %275, %199
  %277 = and i64 %276, 280375465082880
  %278 = icmp ne i64 %277, 0
  %279 = zext i1 %278 to i32
  %280 = lshr i64 %203, 40
  %281 = trunc i64 %280 to i32
  %282 = and i32 %281, 255
  %283 = or i32 %282, %279
  %284 = zext i32 %283 to i64
  %285 = shl nuw nsw i64 %284, 40
  %286 = and i64 %274, -280375465082881
  %287 = or i64 %286, %285
  store i64 %287, ptr %114, align 8
  %288 = load i64, ptr %196, align 4
  %289 = xor i64 %288, %199
  %290 = or i64 %289, %203
  %291 = and i64 %290, 2147483648
  %292 = and i64 %287, -2147483649
  %293 = or i64 %292, %291
  store i64 %293, ptr %114, align 8
  %294 = load i64, ptr %196, align 4
  %295 = xor i64 %294, %199
  %296 = or i64 %295, %203
  %297 = and i64 %296, 1073741824
  %298 = and i64 %293, -1073741825
  %299 = or i64 %298, %297
  store i64 %299, ptr %114, align 8
  %300 = getelementptr inbounds %struct.nvkm_ram_data, ptr %157, i32 0, i32 1, i32 11
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr inbounds %struct.nvkm_ram_data, ptr %154, i32 0, i32 1, i32 11
  %303 = load i32, ptr %302, align 8
  %304 = xor i32 %303, %301
  %305 = load i32, ptr %115, align 8
  %306 = and i32 %304, 1
  %307 = or i32 %306, %305
  store i32 %307, ptr %115, align 8
  %308 = load i32, ptr %300, align 4
  %309 = xor i32 %308, %303
  %310 = or i32 %309, %305
  %311 = and i32 %310, 2
  %312 = and i32 %307, -3
  %313 = or i32 %311, %312
  store i32 %313, ptr %115, align 8
  %314 = load i32, ptr %300, align 4
  %315 = xor i32 %314, %303
  %316 = or i32 %315, %305
  %317 = and i32 %316, 16
  %318 = and i32 %313, -17
  %319 = or i32 %318, %317
  store i32 %319, ptr %115, align 8
  %320 = load i32, ptr %300, align 4
  %321 = xor i32 %320, %303
  %322 = and i32 %321, 384
  %323 = icmp eq i32 %322, 0
  %324 = select i1 %323, i32 0, i32 128
  %325 = and i32 %305, 384
  %326 = and i32 %319, -385
  %327 = or i32 %326, %325
  %328 = or i32 %327, %324
  store i32 %328, ptr %115, align 8
  %329 = getelementptr inbounds %struct.nvkm_ram_data, ptr %157, i32 0, i32 1, i32 11, i32 0, i32 1
  %330 = load i32, ptr %329, align 4
  %331 = getelementptr inbounds %struct.nvkm_ram_data, ptr %154, i32 0, i32 1, i32 11, i32 0, i32 1
  %332 = load i32, ptr %331, align 4
  %333 = xor i32 %332, %330
  %334 = load i32, ptr %116, align 4
  %335 = and i32 %333, 134217728
  %336 = or i32 %335, %334
  store i32 %336, ptr %116, align 4
  %337 = getelementptr inbounds %struct.nvkm_ram_data, ptr %157, i32 0, i32 1, i32 15
  %338 = load i64, ptr %337, align 4
  %339 = getelementptr inbounds %struct.nvkm_ram_data, ptr %154, i32 0, i32 1, i32 15
  %340 = load i64, ptr %339, align 8
  %341 = xor i64 %340, %338
  %342 = and i64 %341, 469762048
  %343 = icmp eq i64 %342, 0
  %344 = load i64, ptr %117, align 8
  %345 = trunc i64 %344 to i32
  %346 = select i1 %343, i32 0, i32 67108864
  %347 = and i32 %345, 469762048
  %348 = or i32 %346, %347
  %349 = zext i32 %348 to i64
  %350 = and i64 %344, -469762049
  %351 = or i64 %350, %349
  store i64 %351, ptr %117, align 8
  br label %364

352:                                              ; preds = %185, %182, %172, %167, %161
  %353 = phi i32 [ -38, %185 ], [ -22, %182 ], [ -38, %172 ], [ -22, %167 ], [ -38, %161 ]
  call void @kfree(ptr noundef nonnull %154) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %354

354:                                              ; preds = %352, %152
  %355 = phi i32 [ -12, %152 ], [ %353, %352 ]
  %356 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %357 = load i32, ptr %356, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %526, label %359

359:                                              ; preds = %354
  %360 = load ptr, ptr %85, align 4
  %361 = getelementptr inbounds %struct.nvkm_device, ptr %360, i32 0, i32 2
  %362 = load ptr, ptr %361, align 8
  %363 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %362, ptr noundef nonnull @.str.1, ptr noundef %363) #12
  br label %526

364:                                              ; preds = %195, %191
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  %365 = add i32 %156, 1
  %366 = load ptr, ptr %112, align 4
  %367 = getelementptr inbounds %struct.nvkm_fb, ptr %366, i32 0, i32 1, i32 1
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr inbounds %struct.nvkm_device, ptr %368, i32 0, i32 21
  %370 = load ptr, ptr %369, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !14
  %371 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %372 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %371, i32 noundef 3264, i32 noundef 144) #14
  %373 = icmp eq ptr %372, null
  br i1 %373, label %152, label %153

374:                                              ; preds = %153
  call void @kfree(ptr noundef nonnull %154) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  %375 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 1
  %376 = call i32 @nvbios_pll_parse(ptr noundef %88, i32 noundef 12, ptr noundef %375) #11
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %387, label %378

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %380 = load i32, ptr %379, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %526, label %382

382:                                              ; preds = %378
  %383 = load ptr, ptr %85, align 4
  %384 = getelementptr inbounds %struct.nvkm_device, ptr %383, i32 0, i32 2
  %385 = load ptr, ptr %384, align 8
  %386 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %385, ptr noundef nonnull @.str.2, ptr noundef %386) #12
  br label %526

387:                                              ; preds = %374
  %388 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 2
  %389 = call i32 @nvbios_pll_parse(ptr noundef %88, i32 noundef 4, ptr noundef %388) #11
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %400, label %391

391:                                              ; preds = %387
  %392 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %393 = load i32, ptr %392, align 4
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %526, label %395

395:                                              ; preds = %391
  %396 = load ptr, ptr %85, align 4
  %397 = getelementptr inbounds %struct.nvkm_device, ptr %396, i32 0, i32 2
  %398 = load ptr, ptr %397, align 8
  %399 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %398, ptr noundef nonnull @.str.3, ptr noundef %399) #12
  br label %526

400:                                              ; preds = %387
  %401 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 25
  %402 = load ptr, ptr %401, align 8
  %403 = call i32 @nvkm_gpio_find(ptr noundef %402, i32 noundef 0, i8 noundef zeroext 24, i8 noundef zeroext -1, ptr noundef nonnull %8) #11
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %424

405:                                              ; preds = %400
  %406 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  %407 = getelementptr inbounds %struct.dcb_gpio_func, ptr %8, i32 0, i32 1
  %408 = load i8, ptr %407, align 1
  %409 = zext i8 %408 to i32
  %410 = shl nuw nsw i32 %409, 2
  %411 = add nuw nsw i32 %410, 54800
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %9, i32 noundef %411)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %406, ptr noundef nonnull align 4 dereferenceable(24) %9, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  %412 = getelementptr inbounds %struct.dcb_gpio_func, ptr %8, i32 0, i32 2
  %413 = load i8, ptr %412, align 1
  %414 = xor i8 %413, 2
  %415 = zext i8 %414 to i32
  %416 = shl nuw nsw i32 %415, 12
  %417 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 4
  store i32 %416, ptr %417, align 4
  %418 = getelementptr inbounds %struct.dcb_gpio_func, ptr %8, i32 0, i32 2, i32 1
  %419 = load i8, ptr %418, align 1
  %420 = xor i8 %419, 2
  %421 = zext i8 %420 to i32
  %422 = shl nuw nsw i32 %421, 12
  %423 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 4, i32 1
  store i32 %422, ptr %423, align 8
  br label %424

424:                                              ; preds = %405, %400
  %425 = load ptr, ptr %401, align 8
  %426 = call i32 @nvkm_gpio_find(ptr noundef %425, i32 noundef 0, i8 noundef zeroext 46, i8 noundef zeroext -1, ptr noundef nonnull %8) #11
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %447

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #11
  %430 = getelementptr inbounds %struct.dcb_gpio_func, ptr %8, i32 0, i32 1
  %431 = load i8, ptr %430, align 1
  %432 = zext i8 %431 to i32
  %433 = shl nuw nsw i32 %432, 2
  %434 = add nuw nsw i32 %433, 54800
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %10, i32 noundef %434)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %429, ptr noundef nonnull align 4 dereferenceable(24) %10, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  %435 = getelementptr inbounds %struct.dcb_gpio_func, ptr %8, i32 0, i32 2
  %436 = load i8, ptr %435, align 1
  %437 = xor i8 %436, 2
  %438 = zext i8 %437 to i32
  %439 = shl nuw nsw i32 %438, 12
  %440 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 6
  store i32 %439, ptr %440, align 4
  %441 = getelementptr inbounds %struct.dcb_gpio_func, ptr %8, i32 0, i32 2, i32 1
  %442 = load i8, ptr %441, align 1
  %443 = xor i8 %442, 2
  %444 = zext i8 %443 to i32
  %445 = shl nuw nsw i32 %444, 12
  %446 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 6, i32 1
  store i32 %445, ptr %446, align 8
  br label %447

447:                                              ; preds = %428, %424
  %448 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %11, i32 noundef 54788)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %448, ptr noundef nonnull align 4 dereferenceable(24) %11, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  %449 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %12, i32 noundef 1253408)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %449, ptr noundef nonnull align 4 dereferenceable(24) %12, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #11
  %450 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %13, i32 noundef 1253416)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %450, ptr noundef nonnull align 4 dereferenceable(24) %13, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #11
  %451 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1253412)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %451, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %452 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %15, i32 noundef 1253424)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %452, ptr noundef nonnull align 4 dereferenceable(24) %15, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  %453 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %16, i32 noundef 1253428)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %453, ptr noundef nonnull align 4 dereferenceable(24) %16, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #11
  %454 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %17, i32 noundef 1253376)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %454, ptr noundef nonnull align 4 dereferenceable(24) %17, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  %455 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %18, i32 noundef 1253380)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %455, ptr noundef nonnull align 4 dereferenceable(24) %18, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #11
  %456 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %19, i32 noundef 1253440)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %456, ptr noundef nonnull align 4 dereferenceable(24) %19, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #11
  %457 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %20, i32 noundef 1110600)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %457, ptr noundef nonnull align 4 dereferenceable(24) %20, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #11
  %458 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %21, i32 noundef 1110672)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %458, ptr noundef nonnull align 4 dereferenceable(24) %21, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #11
  %459 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %22, i32 noundef 1110676)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %459, ptr noundef nonnull align 4 dereferenceable(24) %22, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #11
  %460 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %23, i32 noundef 1110680)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %460, ptr noundef nonnull align 4 dereferenceable(24) %23, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #11
  %461 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %24, i32 noundef 1110684)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %461, ptr noundef nonnull align 4 dereferenceable(24) %24, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #11
  %462 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %25, i32 noundef 1110688)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %462, ptr noundef nonnull align 4 dereferenceable(24) %25, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #11
  %463 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %26, i32 noundef 1110692)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %463, ptr noundef nonnull align 4 dereferenceable(24) %26, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #11
  %464 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %27, i32 noundef 1110696)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %464, ptr noundef nonnull align 4 dereferenceable(24) %27, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #11
  %465 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %28, i32 noundef 1110700)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %465, ptr noundef nonnull align 4 dereferenceable(24) %28, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #11
  %466 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %29, i32 noundef 1110732)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %466, ptr noundef nonnull align 4 dereferenceable(24) %29, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #11
  %467 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %30, i32 noundef 1110760)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %467, ptr noundef nonnull align 4 dereferenceable(24) %30, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #11
  %468 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %31) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %31, i32 noundef 1110608)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %468, ptr noundef nonnull align 4 dereferenceable(24) %31, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %31) #11
  %469 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %32, i32 noundef 1110604)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %469, ptr noundef nonnull align 4 dereferenceable(24) %32, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #11
  %470 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %33) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %33, i32 noundef 1113796)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %470, ptr noundef nonnull align 4 dereferenceable(24) %33, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %33) #11
  %471 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %34) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %34, i32 noundef 1113800)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %471, ptr noundef nonnull align 4 dereferenceable(24) %34, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %34) #11
  %472 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %35) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %35, i32 noundef 1111556)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %472, ptr noundef nonnull align 4 dereferenceable(24) %35, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %35) #11
  %473 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %36) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %36, i32 noundef 1111572)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %473, ptr noundef nonnull align 4 dereferenceable(24) %36, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %36) #11
  %474 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %37) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %37, i32 noundef 1111568)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %474, ptr noundef nonnull align 4 dereferenceable(24) %37, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %37) #11
  %475 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %38) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %38, i32 noundef 1050480)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %475, ptr noundef nonnull align 4 dereferenceable(24) %38, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %38) #11
  %476 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %39) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %39, i32 noundef 1050488)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %476, ptr noundef nonnull align 4 dereferenceable(24) %39, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %39) #11
  %477 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %40) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %40, i32 noundef 1110564)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %477, ptr noundef nonnull align 4 dereferenceable(24) %40, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %40) #11
  %478 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %41) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %41, i32 noundef 1112176)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %478, ptr noundef nonnull align 4 dereferenceable(24) %41, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %41) #11
  %479 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %42) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %42, i32 noundef 1111704)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %479, ptr noundef nonnull align 4 dereferenceable(24) %42, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %42) #11
  %480 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %43) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %43, i32 noundef 1111700)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %480, ptr noundef nonnull align 4 dereferenceable(24) %43, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %43) #11
  %481 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %44) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %44, i32 noundef 1111736)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %481, ptr noundef nonnull align 4 dereferenceable(24) %44, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %44) #11
  %482 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %45) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %45, i32 noundef 1112072)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %482, ptr noundef nonnull align 4 dereferenceable(24) %45, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %45) #11
  %483 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %46) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %46, i32 noundef 1111664)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %483, ptr noundef nonnull align 4 dereferenceable(24) %46, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %46) #11
  %484 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %47) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %47, i32 noundef 1111564)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %484, ptr noundef nonnull align 4 dereferenceable(24) %47, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %47) #11
  %485 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %48) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %48, i32 noundef 1112112)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %485, ptr noundef nonnull align 4 dereferenceable(24) %48, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %48) #11
  %486 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %49) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %49, i32 noundef 1274860)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %486, ptr noundef nonnull align 4 dereferenceable(24) %49, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %49) #11
  %487 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %50) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %50, i32 noundef 1112064)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %487, ptr noundef nonnull align 4 dereferenceable(24) %50, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %50) #11
  %488 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %51) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %51, i32 noundef 1112108)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %488, ptr noundef nonnull align 4 dereferenceable(24) %51, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %51) #11
  %489 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %52) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %52, i32 noundef 1112440)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %489, ptr noundef nonnull align 4 dereferenceable(24) %52, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %52) #11
  %490 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %53) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %53, i32 noundef 1112336)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %490, ptr noundef nonnull align 4 dereferenceable(24) %53, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %53) #11
  %491 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %54) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %54, i32 noundef 1112340)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %491, ptr noundef nonnull align 4 dereferenceable(24) %54, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %54) #11
  %492 = getelementptr inbounds %struct.nvkm_ram, ptr %91, i32 0, i32 2
  %493 = load i32, ptr %492, align 8
  switch i32 %493, label %509 [
    i32 10, label %494
    i32 6, label %505
  ]

494:                                              ; preds = %447
  %495 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %55) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %55, i32 noundef 1110784)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %495, ptr noundef nonnull align 4 dereferenceable(24) %55, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %55) #11
  %496 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %56) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %56, i32 noundef 1110832)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %496, ptr noundef nonnull align 4 dereferenceable(24) %56, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %56) #11
  %497 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %57) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %57, i32 noundef 1110836)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %497, ptr noundef nonnull align 4 dereferenceable(24) %57, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %57) #11
  %498 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %58) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %58, i32 noundef 1110840)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %498, ptr noundef nonnull align 4 dereferenceable(24) %58, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %58) #11
  %499 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %59) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %59, i32 noundef 1110844)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %499, ptr noundef nonnull align 4 dereferenceable(24) %59, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %59) #11
  %500 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %60) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %60, i32 noundef 1110848)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %500, ptr noundef nonnull align 4 dereferenceable(24) %60, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %60) #11
  %501 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %61) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %61, i32 noundef 1110852)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %501, ptr noundef nonnull align 4 dereferenceable(24) %61, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %61) #11
  %502 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %62) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %62, i32 noundef 1110856)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %502, ptr noundef nonnull align 4 dereferenceable(24) %62, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %62) #11
  %503 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %63) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %63, i32 noundef 1110868)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %503, ptr noundef nonnull align 4 dereferenceable(24) %63, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %63) #11
  %504 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %64) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %64, i32 noundef 1110860)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %504, ptr noundef nonnull align 4 dereferenceable(24) %64, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %64) #11
  br label %509

505:                                              ; preds = %447
  %506 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %65) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %65, i32 noundef 1110784)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %506, ptr noundef nonnull align 4 dereferenceable(24) %65, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %65) #11
  %507 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %66) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %66, i32 noundef 1110788)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %507, ptr noundef nonnull align 4 dereferenceable(24) %66, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %66) #11
  %508 = getelementptr %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 51, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %67) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %67, i32 noundef 1110816)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %508, ptr noundef nonnull align 4 dereferenceable(24) %67, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %67) #11
  br label %509

509:                                              ; preds = %505, %494, %447
  %510 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %68) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %68, i32 noundef 6471680)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %510, ptr noundef nonnull align 4 dereferenceable(24) %68, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %68) #11
  %511 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %69) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %69, i32 noundef 1110528)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %511, ptr noundef nonnull align 4 dereferenceable(24) %69, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %69) #11
  %512 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %70) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %70, i32 noundef 1110544)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %512, ptr noundef nonnull align 4 dereferenceable(24) %70, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %70) #11
  %513 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 55
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %71) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %71, i32 noundef 1110800)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %513, ptr noundef nonnull align 4 dereferenceable(24) %71, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %71) #11
  %514 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %72) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %72, i32 noundef 1110804)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %514, ptr noundef nonnull align 4 dereferenceable(24) %72, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %72) #11
  %515 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %73) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %73, i32 noundef 1110808)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %515, ptr noundef nonnull align 4 dereferenceable(24) %73, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %73) #11
  %516 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 58
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %74) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %74, i32 noundef 1110160)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %516, ptr noundef nonnull align 4 dereferenceable(24) %74, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %74) #11
  %517 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 59
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %75) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %75, i32 noundef 1111708)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %517, ptr noundef nonnull align 4 dereferenceable(24) %75, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %75) #11
  %518 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %76) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %76, i32 noundef 1112100)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %518, ptr noundef nonnull align 4 dereferenceable(24) %76, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %76) #11
  %519 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 61
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %77) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %77, i32 noundef 1274864)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %519, ptr noundef nonnull align 4 dereferenceable(24) %77, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %77) #11
  %520 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %78) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %78, i32 noundef 1274868)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %520, ptr noundef nonnull align 4 dereferenceable(24) %78, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %78) #11
  %521 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %79) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %79, i32 noundef 1274656)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %521, ptr noundef nonnull align 4 dereferenceable(24) %79, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %79) #11
  %522 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %80) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %80, i32 noundef 1111644)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %522, ptr noundef nonnull align 4 dereferenceable(24) %80, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %80) #11
  %523 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %81) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %81, i32 noundef 1111740)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %523, ptr noundef nonnull align 4 dereferenceable(24) %81, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %81) #11
  %524 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %82) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %82, i32 noundef 1050384)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %524, ptr noundef nonnull align 4 dereferenceable(24) %82, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %82) #11
  %525 = getelementptr inbounds %struct.gk104_ram, ptr %91, i32 0, i32 1, i32 67
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %83) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %83, i32 noundef 1050448)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %525, ptr noundef nonnull align 4 dereferenceable(24) %83, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %83) #11
  br label %526

526:                                              ; preds = %509, %395, %391, %382, %378, %359, %354, %93, %3
  %527 = phi i32 [ 0, %509 ], [ -12, %3 ], [ %94, %93 ], [ %355, %359 ], [ %355, %354 ], [ %376, %382 ], [ %376, %378 ], [ %389, %395 ], [ %389, %391 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %8) #11
  ret i32 %527
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_ramcfg_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_ram_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_ram_new(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @gk104_ram_new_(ptr noundef nonnull @gk104_ram, ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sddr3_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gk104_ram_calc_sddr3(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %4, 16
  %6 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 8
  %9 = or i32 %8, %5
  %10 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %9, %11
  %13 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %14, 16
  %16 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  %22 = lshr i32 %19, 9
  %23 = and i32 %22, 1
  %24 = xor i32 %23, 1
  %25 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  %32 = load i32, ptr %31, align 4
  br label %45

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_fb, ptr %35, i32 0, i32 1, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %39, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %44 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %33, %30
  %46 = phi i32 [ %32, %30 ], [ %43, %33 ]
  %47 = or i32 %46, 1073741824
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  %51 = load i8, ptr %50, align 4, !range !15
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %49, %45
  %54 = load i32, ptr %27, align 4
  store i32 %54, ptr %25, align 4
  %55 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %47, ptr %55, align 4
  %56 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %61 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 3
  br label %62

62:                                               ; preds = %72, %59
  %63 = phi i32 [ 0, %59 ], [ %74, %72 ]
  %64 = phi i32 [ %57, %59 ], [ %75, %72 ]
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %2, align 4
  %69 = load i32, ptr %60, align 4
  %70 = add i32 %69, %63
  %71 = load i32, ptr %55, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %68, i32 noundef %70, i32 noundef %71) #11
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, ptr %61, align 4
  %74 = add i32 %73, %63
  %75 = lshr i32 %64, 1
  %76 = icmp ult i32 %64, 2
  br i1 %76, label %77, label %62

77:                                               ; preds = %72, %53
  %78 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  store i8 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %49
  %80 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_block(ptr noundef %80) #11
  %81 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_fb, ptr %82, i32 0, i32 1, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 50
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %113, label %88

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52
  %90 = load i32, ptr %27, align 4
  store i32 %90, ptr %89, align 4
  %91 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 5
  store i32 252641280, ptr %91, align 4
  %92 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 2
  %97 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 3
  br label %98

98:                                               ; preds = %108, %95
  %99 = phi i32 [ 0, %95 ], [ %110, %108 ]
  %100 = phi i32 [ %93, %95 ], [ %111, %108 ]
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr %2, align 4
  %105 = load i32, ptr %96, align 4
  %106 = add i32 %105, %99
  %107 = load i32, ptr %91, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %104, i32 noundef %106, i32 noundef %107) #11
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i32, ptr %97, align 4
  %110 = add i32 %109, %99
  %111 = lshr i32 %100, 1
  %112 = icmp ult i32 %100, 2
  br i1 %112, label %113, label %98

113:                                              ; preds = %108, %88, %79
  br i1 %21, label %114, label %220

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %220, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5
  %120 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 6, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %119, align 4
  %123 = load i32, ptr %27, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  %127 = load i32, ptr %126, align 4
  br label %138

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nvkm_fb, ptr %130, i32 0, i32 1, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.nvkm_device, ptr %132, i32 0, i32 11
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 %116
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %137 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %136, ptr %137, align 4
  br label %138

138:                                              ; preds = %128, %125
  %139 = phi i32 [ %127, %125 ], [ %136, %128 ]
  %140 = and i32 %139, -12289
  %141 = or i32 %140, %121
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 1
  %145 = load i8, ptr %144, align 4, !range !15
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %172, label %147

147:                                              ; preds = %143, %138
  %148 = load i32, ptr %27, align 4
  store i32 %148, ptr %119, align 4
  %149 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %141, ptr %149, align 4
  %150 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 4
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %170, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 3
  br label %155

155:                                              ; preds = %165, %153
  %156 = phi i32 [ 0, %153 ], [ %167, %165 ]
  %157 = phi i32 [ %151, %153 ], [ %168, %165 ]
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = load ptr, ptr %2, align 4
  %162 = load i32, ptr %115, align 4
  %163 = add i32 %162, %156
  %164 = load i32, ptr %149, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %161, i32 noundef %163, i32 noundef %164) #11
  br label %165

165:                                              ; preds = %160, %155
  %166 = load i32, ptr %154, align 4
  %167 = add i32 %166, %156
  %168 = lshr i32 %157, 1
  %169 = icmp ult i32 %157, 2
  br i1 %169, label %170, label %155

170:                                              ; preds = %165, %147
  %171 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 1
  store i8 0, ptr %171, align 4
  br label %172

172:                                              ; preds = %170, %143
  %173 = load i32, ptr %119, align 4
  %174 = load i32, ptr %27, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  %178 = load i32, ptr %177, align 4
  br label %190

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.nvkm_fb, ptr %181, i32 0, i32 1, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.nvkm_device, ptr %183, i32 0, i32 11
  %185 = load ptr, ptr %184, align 4
  %186 = load i32, ptr %115, align 4
  %187 = getelementptr i8, ptr %185, i32 %186
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %189 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %188, ptr %189, align 4
  br label %190

190:                                              ; preds = %179, %176
  %191 = phi i32 [ %178, %176 ], [ %188, %179 ]
  %192 = icmp eq i32 %139, %191
  br i1 %192, label %220, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7
  %195 = load i32, ptr %27, align 4
  store i32 %195, ptr %194, align 4
  %196 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 5
  store i32 1, ptr %196, align 4
  %197 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 4
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %218, label %200

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 2
  %202 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 3
  br label %203

203:                                              ; preds = %213, %200
  %204 = phi i32 [ 0, %200 ], [ %215, %213 ]
  %205 = phi i32 [ %198, %200 ], [ %216, %213 ]
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load ptr, ptr %2, align 4
  %210 = load i32, ptr %201, align 4
  %211 = add i32 %210, %204
  %212 = load i32, ptr %196, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %209, i32 noundef %211, i32 noundef %212) #11
  br label %213

213:                                              ; preds = %208, %203
  %214 = load i32, ptr %202, align 4
  %215 = add i32 %214, %204
  %216 = lshr i32 %205, 1
  %217 = icmp ult i32 %205, 2
  br i1 %217, label %218, label %203

218:                                              ; preds = %213, %193
  %219 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %219, i32 noundef 20000) #11
  br label %220

220:                                              ; preds = %218, %190, %114, %113
  %221 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53
  %222 = load i32, ptr %221, align 4
  %223 = load i32, ptr %27, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %227 = load i32, ptr %226, align 4
  br label %240

228:                                              ; preds = %220
  %229 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.nvkm_fb, ptr %230, i32 0, i32 1, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.nvkm_device, ptr %232, i32 0, i32 11
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr i8, ptr %234, i32 %236
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %239 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %238, ptr %239, align 4
  br label %240

240:                                              ; preds = %228, %225
  %241 = phi i32 [ %227, %225 ], [ %238, %228 ]
  %242 = and i32 %241, -2049
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %246 = load i8, ptr %245, align 4, !range !15
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %274, label %248

248:                                              ; preds = %244, %240
  %249 = load i32, ptr %27, align 4
  store i32 %249, ptr %221, align 4
  %250 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %242, ptr %250, align 4
  %251 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %272, label %254

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %256 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %257

257:                                              ; preds = %267, %254
  %258 = phi i32 [ 0, %254 ], [ %269, %267 ]
  %259 = phi i32 [ %252, %254 ], [ %270, %267 ]
  %260 = and i32 %259, 1
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = load ptr, ptr %2, align 4
  %264 = load i32, ptr %255, align 4
  %265 = add i32 %264, %258
  %266 = load i32, ptr %250, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %263, i32 noundef %265, i32 noundef %266) #11
  br label %267

267:                                              ; preds = %262, %257
  %268 = load i32, ptr %256, align 4
  %269 = add i32 %268, %258
  %270 = lshr i32 %259, 1
  %271 = icmp ult i32 %259, 2
  br i1 %271, label %272, label %257

272:                                              ; preds = %267, %248
  %273 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %273, align 4
  br label %274

274:                                              ; preds = %272, %244
  %275 = load i32, ptr %18, align 4
  %276 = and i32 %275, 62914560
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %331, label %278

278:                                              ; preds = %274
  %279 = load i32, ptr %25, align 4
  %280 = load i32, ptr %27, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  %284 = load i32, ptr %283, align 4
  br label %297

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr inbounds %struct.nvkm_fb, ptr %287, i32 0, i32 1, i32 1
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.nvkm_device, ptr %289, i32 0, i32 11
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr i8, ptr %291, i32 %293
  %295 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %294) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %296 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %295, ptr %296, align 4
  br label %297

297:                                              ; preds = %285, %282
  %298 = phi i32 [ %284, %282 ], [ %295, %285 ]
  %299 = or i32 %298, 67108864
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  %303 = load i8, ptr %302, align 4, !range !15
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %331, label %305

305:                                              ; preds = %301, %297
  %306 = load i32, ptr %27, align 4
  store i32 %306, ptr %25, align 4
  %307 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %299, ptr %307, align 4
  %308 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 4
  %309 = load i32, ptr %308, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %329, label %311

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %313 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 3
  br label %314

314:                                              ; preds = %324, %311
  %315 = phi i32 [ 0, %311 ], [ %326, %324 ]
  %316 = phi i32 [ %309, %311 ], [ %327, %324 ]
  %317 = and i32 %316, 1
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %324, label %319

319:                                              ; preds = %314
  %320 = load ptr, ptr %2, align 4
  %321 = load i32, ptr %312, align 4
  %322 = add i32 %321, %315
  %323 = load i32, ptr %307, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %320, i32 noundef %322, i32 noundef %323) #11
  br label %324

324:                                              ; preds = %319, %314
  %325 = load i32, ptr %313, align 4
  %326 = add i32 %325, %315
  %327 = lshr i32 %316, 1
  %328 = icmp ult i32 %316, 2
  br i1 %328, label %329, label %314

329:                                              ; preds = %324, %305
  %330 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  store i8 0, ptr %330, align 4
  br label %331

331:                                              ; preds = %329, %301, %274
  %332 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56
  %333 = load i32, ptr %27, align 4
  store i32 %333, ptr %332, align 4
  %334 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 5
  store i32 1, ptr %334, align 4
  %335 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 4
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %356, label %338

338:                                              ; preds = %331
  %339 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 2
  %340 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 3
  br label %341

341:                                              ; preds = %351, %338
  %342 = phi i32 [ 0, %338 ], [ %353, %351 ]
  %343 = phi i32 [ %336, %338 ], [ %354, %351 ]
  %344 = and i32 %343, 1
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %351, label %346

346:                                              ; preds = %341
  %347 = load ptr, ptr %2, align 4
  %348 = load i32, ptr %339, align 4
  %349 = add i32 %348, %342
  %350 = load i32, ptr %334, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %347, i32 noundef %349, i32 noundef %350) #11
  br label %351

351:                                              ; preds = %346, %341
  %352 = load i32, ptr %340, align 4
  %353 = add i32 %352, %342
  %354 = lshr i32 %343, 1
  %355 = icmp ult i32 %343, 2
  br i1 %355, label %356, label %341

356:                                              ; preds = %351, %331
  %357 = getelementptr inbounds %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 8
  %358 = load i32, ptr %357, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %436, label %360

360:                                              ; preds = %356
  %361 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1
  %362 = load i32, ptr %361, align 4
  %363 = load i32, ptr %27, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %368

365:                                              ; preds = %360
  %366 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  %367 = load i32, ptr %366, align 4
  br label %380

368:                                              ; preds = %360
  %369 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %370 = load ptr, ptr %369, align 4
  %371 = getelementptr inbounds %struct.nvkm_fb, ptr %370, i32 0, i32 1, i32 1
  %372 = load ptr, ptr %371, align 4
  %373 = getelementptr inbounds %struct.nvkm_device, ptr %372, i32 0, i32 11
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %376 = load i32, ptr %375, align 4
  %377 = getelementptr i8, ptr %374, i32 %376
  %378 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %377) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %379 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %378, ptr %379, align 4
  br label %380

380:                                              ; preds = %368, %365
  %381 = phi i32 [ %367, %365 ], [ %378, %368 ]
  %382 = and i32 %381, 1
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %436

384:                                              ; preds = %380
  %385 = load i32, ptr %361, align 4
  %386 = load i32, ptr %27, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %400, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.nvkm_fb, ptr %390, i32 0, i32 1, i32 1
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.nvkm_device, ptr %392, i32 0, i32 11
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %396 = load i32, ptr %395, align 4
  %397 = getelementptr i8, ptr %394, i32 %396
  %398 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %397) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %399 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %398, ptr %399, align 4
  br label %400

400:                                              ; preds = %388, %384
  %401 = phi i32 [ %398, %388 ], [ %381, %384 ]
  %402 = or i32 %401, 1
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %404, label %408

404:                                              ; preds = %400
  %405 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 1
  %406 = load i8, ptr %405, align 4, !range !15
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %434, label %408

408:                                              ; preds = %404, %400
  %409 = load i32, ptr %27, align 4
  store i32 %409, ptr %361, align 4
  %410 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %402, ptr %410, align 4
  %411 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 4
  %412 = load i32, ptr %411, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %432, label %414

414:                                              ; preds = %408
  %415 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %416 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 3
  br label %417

417:                                              ; preds = %427, %414
  %418 = phi i32 [ 0, %414 ], [ %429, %427 ]
  %419 = phi i32 [ %412, %414 ], [ %430, %427 ]
  %420 = and i32 %419, 1
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %427, label %422

422:                                              ; preds = %417
  %423 = load ptr, ptr %2, align 4
  %424 = load i32, ptr %415, align 4
  %425 = add i32 %424, %418
  %426 = load i32, ptr %410, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %423, i32 noundef %425, i32 noundef %426) #11
  br label %427

427:                                              ; preds = %422, %417
  %428 = load i32, ptr %416, align 4
  %429 = add i32 %428, %418
  %430 = lshr i32 %419, 1
  %431 = icmp ult i32 %419, 2
  br i1 %431, label %432, label %417

432:                                              ; preds = %427, %408
  %433 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 1
  store i8 0, ptr %433, align 4
  br label %434

434:                                              ; preds = %432, %404
  %435 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %435, i32 noundef 1000) #11
  br label %436

436:                                              ; preds = %434, %380, %356
  %437 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54
  %438 = load i32, ptr %27, align 4
  store i32 %438, ptr %437, align 4
  %439 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 5
  store i32 0, ptr %439, align 4
  %440 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 4
  %441 = load i32, ptr %440, align 4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %463, label %443

443:                                              ; preds = %436
  %444 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 2
  %445 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 3
  br label %446

446:                                              ; preds = %456, %443
  %447 = phi i32 [ 0, %443 ], [ %458, %456 ]
  %448 = phi i32 [ %441, %443 ], [ %459, %456 ]
  %449 = and i32 %448, 1
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %456, label %451

451:                                              ; preds = %446
  %452 = load ptr, ptr %2, align 4
  %453 = load i32, ptr %444, align 4
  %454 = add i32 %453, %447
  %455 = load i32, ptr %439, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %452, i32 noundef %454, i32 noundef %455) #11
  br label %456

456:                                              ; preds = %451, %446
  %457 = load i32, ptr %445, align 4
  %458 = add i32 %457, %447
  %459 = lshr i32 %448, 1
  %460 = icmp ult i32 %448, 2
  br i1 %460, label %461, label %446

461:                                              ; preds = %456
  %462 = load i32, ptr %27, align 4
  br label %463

463:                                              ; preds = %461, %436
  %464 = phi i32 [ %462, %461 ], [ %438, %436 ]
  %465 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55
  store i32 %464, ptr %465, align 4
  %466 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 5
  store i32 1, ptr %466, align 4
  %467 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 4
  %468 = load i32, ptr %467, align 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %490, label %470

470:                                              ; preds = %463
  %471 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 2
  %472 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 3
  br label %473

473:                                              ; preds = %483, %470
  %474 = phi i32 [ 0, %470 ], [ %485, %483 ]
  %475 = phi i32 [ %468, %470 ], [ %486, %483 ]
  %476 = and i32 %475, 1
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %483, label %478

478:                                              ; preds = %473
  %479 = load ptr, ptr %2, align 4
  %480 = load i32, ptr %471, align 4
  %481 = add i32 %480, %474
  %482 = load i32, ptr %466, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %479, i32 noundef %481, i32 noundef %482) #11
  br label %483

483:                                              ; preds = %478, %473
  %484 = load i32, ptr %472, align 4
  %485 = add i32 %484, %474
  %486 = lshr i32 %475, 1
  %487 = icmp ult i32 %475, 2
  br i1 %487, label %488, label %473

488:                                              ; preds = %483
  %489 = load i32, ptr %27, align 4
  br label %490

490:                                              ; preds = %488, %463
  %491 = phi i32 [ %489, %488 ], [ %464, %463 ]
  %492 = load i32, ptr %221, align 4
  %493 = icmp eq i32 %492, %491
  br i1 %493, label %494, label %497

494:                                              ; preds = %490
  %495 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %496 = load i32, ptr %495, align 4
  br label %509

497:                                              ; preds = %490
  %498 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %499 = load ptr, ptr %498, align 4
  %500 = getelementptr inbounds %struct.nvkm_fb, ptr %499, i32 0, i32 1, i32 1
  %501 = load ptr, ptr %500, align 4
  %502 = getelementptr inbounds %struct.nvkm_device, ptr %501, i32 0, i32 11
  %503 = load ptr, ptr %502, align 4
  %504 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %505 = load i32, ptr %504, align 4
  %506 = getelementptr i8, ptr %503, i32 %505
  %507 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %506) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %508 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %507, ptr %508, align 4
  br label %509

509:                                              ; preds = %497, %494
  %510 = phi i32 [ %496, %494 ], [ %507, %497 ]
  %511 = or i32 %510, -2147483648
  %512 = icmp eq i32 %510, %511
  br i1 %512, label %513, label %517

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %515 = load i8, ptr %514, align 4, !range !15
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %543, label %517

517:                                              ; preds = %513, %509
  %518 = load i32, ptr %27, align 4
  store i32 %518, ptr %221, align 4
  %519 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %511, ptr %519, align 4
  %520 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %521 = load i32, ptr %520, align 4
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %541, label %523

523:                                              ; preds = %517
  %524 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %525 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %526

526:                                              ; preds = %536, %523
  %527 = phi i32 [ 0, %523 ], [ %538, %536 ]
  %528 = phi i32 [ %521, %523 ], [ %539, %536 ]
  %529 = and i32 %528, 1
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %536, label %531

531:                                              ; preds = %526
  %532 = load ptr, ptr %2, align 4
  %533 = load i32, ptr %524, align 4
  %534 = add i32 %533, %527
  %535 = load i32, ptr %519, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %532, i32 noundef %534, i32 noundef %535) #11
  br label %536

536:                                              ; preds = %531, %526
  %537 = load i32, ptr %525, align 4
  %538 = add i32 %537, %527
  %539 = lshr i32 %528, 1
  %540 = icmp ult i32 %528, 2
  br i1 %540, label %541, label %526

541:                                              ; preds = %536, %517
  %542 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %542, align 4
  br label %543

543:                                              ; preds = %541, %513
  %544 = load i32, ptr %27, align 4
  store i32 %544, ptr %465, align 4
  store i32 1, ptr %466, align 4
  %545 = load i32, ptr %467, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %567, label %547

547:                                              ; preds = %543
  %548 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 2
  %549 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 3
  br label %550

550:                                              ; preds = %560, %547
  %551 = phi i32 [ 0, %547 ], [ %562, %560 ]
  %552 = phi i32 [ %545, %547 ], [ %563, %560 ]
  %553 = and i32 %552, 1
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %560, label %555

555:                                              ; preds = %550
  %556 = load ptr, ptr %2, align 4
  %557 = load i32, ptr %548, align 4
  %558 = add i32 %557, %551
  %559 = load i32, ptr %466, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %556, i32 noundef %558, i32 noundef %559) #11
  br label %560

560:                                              ; preds = %555, %550
  %561 = load i32, ptr %549, align 4
  %562 = add i32 %561, %551
  %563 = lshr i32 %552, 1
  %564 = icmp ult i32 %552, 2
  br i1 %564, label %565, label %550

565:                                              ; preds = %560
  %566 = load i32, ptr %27, align 4
  br label %567

567:                                              ; preds = %565, %543
  %568 = phi i32 [ %566, %565 ], [ %544, %543 ]
  %569 = load i32, ptr %221, align 4
  %570 = icmp eq i32 %569, %568
  br i1 %570, label %571, label %574

571:                                              ; preds = %567
  %572 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %573 = load i32, ptr %572, align 4
  br label %586

574:                                              ; preds = %567
  %575 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %576 = load ptr, ptr %575, align 4
  %577 = getelementptr inbounds %struct.nvkm_fb, ptr %576, i32 0, i32 1, i32 1
  %578 = load ptr, ptr %577, align 4
  %579 = getelementptr inbounds %struct.nvkm_device, ptr %578, i32 0, i32 11
  %580 = load ptr, ptr %579, align 4
  %581 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %582 = load i32, ptr %581, align 4
  %583 = getelementptr i8, ptr %580, i32 %582
  %584 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %583) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %585 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %584, ptr %585, align 4
  br label %586

586:                                              ; preds = %574, %571
  %587 = phi i32 [ %573, %571 ], [ %584, %574 ]
  %588 = and i32 %587, 2147483647
  %589 = icmp sgt i32 %587, -1
  br i1 %589, label %590, label %594

590:                                              ; preds = %586
  %591 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %592 = load i8, ptr %591, align 4, !range !15
  %593 = icmp eq i8 %592, 0
  br i1 %593, label %620, label %594

594:                                              ; preds = %590, %586
  %595 = load i32, ptr %27, align 4
  store i32 %595, ptr %221, align 4
  %596 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %588, ptr %596, align 4
  %597 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %598 = load i32, ptr %597, align 4
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %618, label %600

600:                                              ; preds = %594
  %601 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %602 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %603

603:                                              ; preds = %613, %600
  %604 = phi i32 [ 0, %600 ], [ %615, %613 ]
  %605 = phi i32 [ %598, %600 ], [ %616, %613 ]
  %606 = and i32 %605, 1
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %613, label %608

608:                                              ; preds = %603
  %609 = load ptr, ptr %2, align 4
  %610 = load i32, ptr %601, align 4
  %611 = add i32 %610, %604
  %612 = load i32, ptr %596, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %609, i32 noundef %611, i32 noundef %612) #11
  br label %613

613:                                              ; preds = %608, %603
  %614 = load i32, ptr %602, align 4
  %615 = add i32 %614, %604
  %616 = lshr i32 %605, 1
  %617 = icmp ult i32 %605, 2
  br i1 %617, label %618, label %603

618:                                              ; preds = %613, %594
  %619 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %619, align 4
  br label %620

620:                                              ; preds = %618, %590
  %621 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %621, i32 noundef 1000) #11
  %622 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58
  %623 = load i32, ptr %27, align 4
  store i32 %623, ptr %622, align 4
  %624 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 5
  store i32 96, ptr %624, align 4
  %625 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 4
  %626 = load i32, ptr %625, align 4
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %620
  store i32 -1073741698, ptr %624, align 4
  br label %668

629:                                              ; preds = %620
  %630 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 2
  %631 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 3
  br label %632

632:                                              ; preds = %642, %629
  %633 = phi i32 [ 0, %629 ], [ %644, %642 ]
  %634 = phi i32 [ %626, %629 ], [ %645, %642 ]
  %635 = and i32 %634, 1
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %642, label %637

637:                                              ; preds = %632
  %638 = load ptr, ptr %2, align 4
  %639 = load i32, ptr %630, align 4
  %640 = add i32 %639, %633
  %641 = load i32, ptr %624, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %638, i32 noundef %640, i32 noundef %641) #11
  br label %642

642:                                              ; preds = %637, %632
  %643 = load i32, ptr %631, align 4
  %644 = add i32 %643, %633
  %645 = lshr i32 %634, 1
  %646 = icmp ult i32 %634, 2
  br i1 %646, label %647, label %632

647:                                              ; preds = %642
  %648 = load i32, ptr %625, align 4
  %649 = load i32, ptr %27, align 4
  store i32 %649, ptr %622, align 4
  store i32 -1073741698, ptr %624, align 4
  %650 = icmp eq i32 %648, 0
  br i1 %650, label %668, label %651

651:                                              ; preds = %663, %647
  %652 = phi i32 [ %664, %663 ], [ %643, %647 ]
  %653 = phi i32 [ %665, %663 ], [ 0, %647 ]
  %654 = phi i32 [ %666, %663 ], [ %648, %647 ]
  %655 = and i32 %654, 1
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %663, label %657

657:                                              ; preds = %651
  %658 = load ptr, ptr %2, align 4
  %659 = load i32, ptr %630, align 4
  %660 = add i32 %659, %653
  %661 = load i32, ptr %624, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %658, i32 noundef %660, i32 noundef %661) #11
  %662 = load i32, ptr %631, align 4
  br label %663

663:                                              ; preds = %657, %651
  %664 = phi i32 [ %662, %657 ], [ %652, %651 ]
  %665 = add i32 %664, %653
  %666 = lshr i32 %654, 1
  %667 = icmp ult i32 %654, 2
  br i1 %667, label %668, label %651

668:                                              ; preds = %663, %647, %628
  %669 = load i32, ptr %18, align 4
  %670 = lshr i32 %669, 20
  %671 = and i32 %670, 3
  %672 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_ram_calc_sddr3, i32 0, i32 %671
  %673 = load i32, ptr %672, align 4
  %674 = lshr i32 %669, 18
  %675 = and i32 %674, 3
  %676 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_ram_calc_sddr3.9, i32 0, i32 %675
  %677 = load i32, ptr %676, align 4
  %678 = and i32 %673, %677
  %679 = and i32 %669, 8192
  %680 = icmp eq i32 %679, 0
  %681 = select i1 %680, i32 -2146891808, i32 -2096560160
  %682 = shl i32 %669, 1
  %683 = and i32 %682, 8192
  %684 = or i32 %681, %683
  %685 = getelementptr inbounds %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 11, i32 0, i32 1
  %686 = load i32, ptr %685, align 4
  %687 = lshr i32 %686, 5
  %688 = and i32 %687, 16384
  %689 = or i32 %684, %688
  %690 = and i32 %686, 262144
  %691 = icmp eq i32 %690, 0
  %692 = select i1 %691, i32 335544320, i32 3
  %693 = or i32 %689, %692
  %694 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60
  %695 = load i32, ptr %694, align 4
  %696 = load i32, ptr %27, align 4
  %697 = icmp eq i32 %695, %696
  br i1 %697, label %698, label %701

698:                                              ; preds = %668
  %699 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  %700 = load i32, ptr %699, align 4
  br label %713

701:                                              ; preds = %668
  %702 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %703 = load ptr, ptr %702, align 4
  %704 = getelementptr inbounds %struct.nvkm_fb, ptr %703, i32 0, i32 1, i32 1
  %705 = load ptr, ptr %704, align 4
  %706 = getelementptr inbounds %struct.nvkm_device, ptr %705, i32 0, i32 11
  %707 = load ptr, ptr %706, align 4
  %708 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 2
  %709 = load i32, ptr %708, align 4
  %710 = getelementptr i8, ptr %707, i32 %709
  %711 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %710) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %712 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  store i32 %711, ptr %712, align 4
  br label %713

713:                                              ; preds = %701, %698
  %714 = phi i32 [ %700, %698 ], [ %711, %701 ]
  %715 = xor i32 %693, -1
  %716 = and i32 %714, %715
  %717 = or i32 %716, %678
  %718 = icmp eq i32 %714, %717
  br i1 %718, label %719, label %723

719:                                              ; preds = %713
  %720 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 1
  %721 = load i8, ptr %720, align 4, !range !15
  %722 = icmp eq i8 %721, 0
  br i1 %722, label %749, label %723

723:                                              ; preds = %719, %713
  %724 = load i32, ptr %27, align 4
  store i32 %724, ptr %694, align 4
  %725 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  store i32 %717, ptr %725, align 4
  %726 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 4
  %727 = load i32, ptr %726, align 4
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %747, label %729

729:                                              ; preds = %723
  %730 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 2
  %731 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 3
  br label %732

732:                                              ; preds = %742, %729
  %733 = phi i32 [ 0, %729 ], [ %744, %742 ]
  %734 = phi i32 [ %727, %729 ], [ %745, %742 ]
  %735 = and i32 %734, 1
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %742, label %737

737:                                              ; preds = %732
  %738 = load ptr, ptr %2, align 4
  %739 = load i32, ptr %730, align 4
  %740 = add i32 %739, %733
  %741 = load i32, ptr %725, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %738, i32 noundef %740, i32 noundef %741) #11
  br label %742

742:                                              ; preds = %737, %732
  %743 = load i32, ptr %731, align 4
  %744 = add i32 %743, %733
  %745 = lshr i32 %734, 1
  %746 = icmp ult i32 %734, 2
  br i1 %746, label %747, label %732

747:                                              ; preds = %742, %723
  %748 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 1
  store i8 0, ptr %748, align 4
  br label %749

749:                                              ; preds = %747, %719
  %750 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15
  %751 = load i32, ptr %750, align 4
  %752 = load i32, ptr %27, align 4
  %753 = icmp eq i32 %751, %752
  br i1 %753, label %754, label %757

754:                                              ; preds = %749
  %755 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  %756 = load i32, ptr %755, align 4
  br label %769

757:                                              ; preds = %749
  %758 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %759 = load ptr, ptr %758, align 4
  %760 = getelementptr inbounds %struct.nvkm_fb, ptr %759, i32 0, i32 1, i32 1
  %761 = load ptr, ptr %760, align 4
  %762 = getelementptr inbounds %struct.nvkm_device, ptr %761, i32 0, i32 11
  %763 = load ptr, ptr %762, align 4
  %764 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 2
  %765 = load i32, ptr %764, align 4
  %766 = getelementptr i8, ptr %763, i32 %765
  %767 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %766) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %768 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  store i32 %767, ptr %768, align 4
  br label %769

769:                                              ; preds = %757, %754
  %770 = phi i32 [ %756, %754 ], [ %767, %757 ]
  %771 = and i32 %770, -65537
  %772 = icmp eq i32 %770, %771
  br i1 %772, label %773, label %777

773:                                              ; preds = %769
  %774 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 1
  %775 = load i8, ptr %774, align 4, !range !15
  %776 = icmp eq i8 %775, 0
  br i1 %776, label %803, label %777

777:                                              ; preds = %773, %769
  %778 = load i32, ptr %27, align 4
  store i32 %778, ptr %750, align 4
  %779 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  store i32 %771, ptr %779, align 4
  %780 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 4
  %781 = load i32, ptr %780, align 4
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %801, label %783

783:                                              ; preds = %777
  %784 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 2
  %785 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 3
  br label %786

786:                                              ; preds = %796, %783
  %787 = phi i32 [ 0, %783 ], [ %798, %796 ]
  %788 = phi i32 [ %781, %783 ], [ %799, %796 ]
  %789 = and i32 %788, 1
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %796, label %791

791:                                              ; preds = %786
  %792 = load ptr, ptr %2, align 4
  %793 = load i32, ptr %784, align 4
  %794 = add i32 %793, %787
  %795 = load i32, ptr %779, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %792, i32 noundef %794, i32 noundef %795) #11
  br label %796

796:                                              ; preds = %791, %786
  %797 = load i32, ptr %785, align 4
  %798 = add i32 %797, %787
  %799 = lshr i32 %788, 1
  %800 = icmp ult i32 %788, 2
  br i1 %800, label %801, label %786

801:                                              ; preds = %796, %777
  %802 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 1
  store i8 0, ptr %802, align 4
  br label %803

803:                                              ; preds = %801, %773
  %804 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62
  %805 = load i32, ptr %804, align 4
  %806 = load i32, ptr %27, align 4
  %807 = icmp eq i32 %805, %806
  br i1 %807, label %808, label %811

808:                                              ; preds = %803
  %809 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  %810 = load i32, ptr %809, align 4
  br label %823

811:                                              ; preds = %803
  %812 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %813 = load ptr, ptr %812, align 4
  %814 = getelementptr inbounds %struct.nvkm_fb, ptr %813, i32 0, i32 1, i32 1
  %815 = load ptr, ptr %814, align 4
  %816 = getelementptr inbounds %struct.nvkm_device, ptr %815, i32 0, i32 11
  %817 = load ptr, ptr %816, align 4
  %818 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %819 = load i32, ptr %818, align 4
  %820 = getelementptr i8, ptr %817, i32 %819
  %821 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %820) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %822 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %821, ptr %822, align 4
  br label %823

823:                                              ; preds = %811, %808
  %824 = phi i32 [ %810, %808 ], [ %821, %811 ]
  %825 = or i32 %824, 65552
  %826 = icmp eq i32 %824, %825
  br i1 %826, label %827, label %831

827:                                              ; preds = %823
  %828 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  %829 = load i8, ptr %828, align 4, !range !15
  %830 = icmp eq i8 %829, 0
  br i1 %830, label %857, label %831

831:                                              ; preds = %827, %823
  %832 = load i32, ptr %27, align 4
  store i32 %832, ptr %804, align 4
  %833 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %825, ptr %833, align 4
  %834 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 4
  %835 = load i32, ptr %834, align 4
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %855, label %837

837:                                              ; preds = %831
  %838 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %839 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 3
  br label %840

840:                                              ; preds = %850, %837
  %841 = phi i32 [ 0, %837 ], [ %852, %850 ]
  %842 = phi i32 [ %835, %837 ], [ %853, %850 ]
  %843 = and i32 %842, 1
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %850, label %845

845:                                              ; preds = %840
  %846 = load ptr, ptr %2, align 4
  %847 = load i32, ptr %838, align 4
  %848 = add i32 %847, %841
  %849 = load i32, ptr %833, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %846, i32 noundef %848, i32 noundef %849) #11
  br label %850

850:                                              ; preds = %845, %840
  %851 = load i32, ptr %839, align 4
  %852 = add i32 %851, %841
  %853 = lshr i32 %842, 1
  %854 = icmp ult i32 %842, 2
  br i1 %854, label %855, label %840

855:                                              ; preds = %850, %831
  %856 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  store i8 0, ptr %856, align 4
  br label %857

857:                                              ; preds = %855, %827
  %858 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 45
  %859 = load i32, ptr %858, align 4
  %860 = load i32, ptr %27, align 4
  %861 = icmp eq i32 %859, %860
  br i1 %861, label %862, label %865

862:                                              ; preds = %857
  %863 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 45, i32 5
  %864 = load i32, ptr %863, align 4
  br label %878

865:                                              ; preds = %857
  %866 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %867 = load ptr, ptr %866, align 4
  %868 = getelementptr inbounds %struct.nvkm_fb, ptr %867, i32 0, i32 1, i32 1
  %869 = load ptr, ptr %868, align 4
  %870 = getelementptr inbounds %struct.nvkm_device, ptr %869, i32 0, i32 11
  %871 = load ptr, ptr %870, align 4
  %872 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 45, i32 2
  %873 = load i32, ptr %872, align 4
  %874 = getelementptr i8, ptr %871, i32 %873
  %875 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %874) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %876 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 45, i32 5
  store i32 %875, ptr %876, align 4
  %877 = load i32, ptr %27, align 4
  br label %878

878:                                              ; preds = %865, %862
  %879 = phi i32 [ %859, %862 ], [ %877, %865 ]
  %880 = phi i32 [ %864, %862 ], [ %875, %865 ]
  %881 = and i32 %880, -196609
  %882 = load i32, ptr %18, align 4
  %883 = lshr i32 %882, 2
  %884 = and i32 %883, 196608
  %885 = or i32 %884, %881
  store i32 %879, ptr %858, align 4
  %886 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 45, i32 5
  store i32 %885, ptr %886, align 4
  %887 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 45, i32 4
  %888 = load i32, ptr %887, align 4
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %910, label %890

890:                                              ; preds = %878
  %891 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 45, i32 2
  %892 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 45, i32 3
  br label %893

893:                                              ; preds = %903, %890
  %894 = phi i32 [ 0, %890 ], [ %905, %903 ]
  %895 = phi i32 [ %888, %890 ], [ %906, %903 ]
  %896 = and i32 %895, 1
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %903, label %898

898:                                              ; preds = %893
  %899 = load ptr, ptr %2, align 4
  %900 = load i32, ptr %891, align 4
  %901 = add i32 %900, %894
  %902 = load i32, ptr %886, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %899, i32 noundef %901, i32 noundef %902) #11
  br label %903

903:                                              ; preds = %898, %893
  %904 = load i32, ptr %892, align 4
  %905 = add i32 %904, %894
  %906 = lshr i32 %895, 1
  %907 = icmp ult i32 %895, 2
  br i1 %907, label %908, label %893

908:                                              ; preds = %903
  %909 = load i32, ptr %27, align 4
  br label %910

910:                                              ; preds = %908, %878
  %911 = phi i32 [ %909, %908 ], [ %879, %878 ]
  %912 = load i32, ptr %804, align 4
  %913 = icmp eq i32 %912, %911
  br i1 %913, label %914, label %917

914:                                              ; preds = %910
  %915 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  %916 = load i32, ptr %915, align 4
  br label %929

917:                                              ; preds = %910
  %918 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %919 = load ptr, ptr %918, align 4
  %920 = getelementptr inbounds %struct.nvkm_fb, ptr %919, i32 0, i32 1, i32 1
  %921 = load ptr, ptr %920, align 4
  %922 = getelementptr inbounds %struct.nvkm_device, ptr %921, i32 0, i32 11
  %923 = load ptr, ptr %922, align 4
  %924 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %925 = load i32, ptr %924, align 4
  %926 = getelementptr i8, ptr %923, i32 %925
  %927 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %926) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %928 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %927, ptr %928, align 4
  br label %929

929:                                              ; preds = %917, %914
  %930 = phi i32 [ %916, %914 ], [ %927, %917 ]
  %931 = and i32 %930, -4
  %932 = icmp eq i32 %930, %931
  br i1 %932, label %933, label %937

933:                                              ; preds = %929
  %934 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  %935 = load i8, ptr %934, align 4, !range !15
  %936 = icmp eq i8 %935, 0
  br i1 %936, label %963, label %937

937:                                              ; preds = %933, %929
  %938 = load i32, ptr %27, align 4
  store i32 %938, ptr %804, align 4
  %939 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %931, ptr %939, align 4
  %940 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 4
  %941 = load i32, ptr %940, align 4
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %961, label %943

943:                                              ; preds = %937
  %944 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %945 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 3
  br label %946

946:                                              ; preds = %956, %943
  %947 = phi i32 [ 0, %943 ], [ %958, %956 ]
  %948 = phi i32 [ %941, %943 ], [ %959, %956 ]
  %949 = and i32 %948, 1
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %956, label %951

951:                                              ; preds = %946
  %952 = load ptr, ptr %2, align 4
  %953 = load i32, ptr %944, align 4
  %954 = add i32 %953, %947
  %955 = load i32, ptr %939, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %952, i32 noundef %954, i32 noundef %955) #11
  br label %956

956:                                              ; preds = %951, %946
  %957 = load i32, ptr %945, align 4
  %958 = add i32 %957, %947
  %959 = lshr i32 %948, 1
  %960 = icmp ult i32 %948, 2
  br i1 %960, label %961, label %946

961:                                              ; preds = %956, %937
  %962 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  store i8 0, ptr %962, align 4
  br label %963

963:                                              ; preds = %961, %933
  %964 = load i32, ptr %804, align 4
  %965 = load i32, ptr %27, align 4
  %966 = icmp eq i32 %964, %965
  br i1 %966, label %967, label %970

967:                                              ; preds = %963
  %968 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  %969 = load i32, ptr %968, align 4
  br label %982

970:                                              ; preds = %963
  %971 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %972 = load ptr, ptr %971, align 4
  %973 = getelementptr inbounds %struct.nvkm_fb, ptr %972, i32 0, i32 1, i32 1
  %974 = load ptr, ptr %973, align 4
  %975 = getelementptr inbounds %struct.nvkm_device, ptr %974, i32 0, i32 11
  %976 = load ptr, ptr %975, align 4
  %977 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %978 = load i32, ptr %977, align 4
  %979 = getelementptr i8, ptr %976, i32 %978
  %980 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %979) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %981 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %980, ptr %981, align 4
  br label %982

982:                                              ; preds = %970, %967
  %983 = phi i32 [ %969, %967 ], [ %980, %970 ]
  %984 = and i32 %983, -17
  %985 = icmp eq i32 %983, %984
  br i1 %985, label %986, label %990

986:                                              ; preds = %982
  %987 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  %988 = load i8, ptr %987, align 4, !range !15
  %989 = icmp eq i8 %988, 0
  br i1 %989, label %1016, label %990

990:                                              ; preds = %986, %982
  %991 = load i32, ptr %27, align 4
  store i32 %991, ptr %804, align 4
  %992 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %984, ptr %992, align 4
  %993 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 4
  %994 = load i32, ptr %993, align 4
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1014, label %996

996:                                              ; preds = %990
  %997 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %998 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 3
  br label %999

999:                                              ; preds = %1009, %996
  %1000 = phi i32 [ 0, %996 ], [ %1011, %1009 ]
  %1001 = phi i32 [ %994, %996 ], [ %1012, %1009 ]
  %1002 = and i32 %1001, 1
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1009, label %1004

1004:                                             ; preds = %999
  %1005 = load ptr, ptr %2, align 4
  %1006 = load i32, ptr %997, align 4
  %1007 = add i32 %1006, %1000
  %1008 = load i32, ptr %992, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1005, i32 noundef %1007, i32 noundef %1008) #11
  br label %1009

1009:                                             ; preds = %1004, %999
  %1010 = load i32, ptr %998, align 4
  %1011 = add i32 %1010, %1000
  %1012 = lshr i32 %1001, 1
  %1013 = icmp ult i32 %1001, 2
  br i1 %1013, label %1014, label %999

1014:                                             ; preds = %1009, %990
  %1015 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  store i8 0, ptr %1015, align 4
  br label %1016

1016:                                             ; preds = %1014, %986
  %1017 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 10
  %1018 = load i32, ptr %1017, align 4
  %1019 = load i32, ptr %27, align 4
  %1020 = icmp eq i32 %1018, %1019
  br i1 %1020, label %1021, label %1024

1021:                                             ; preds = %1016
  %1022 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 10, i32 5
  %1023 = load i32, ptr %1022, align 4
  br label %1036

1024:                                             ; preds = %1016
  %1025 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1026 = load ptr, ptr %1025, align 4
  %1027 = getelementptr inbounds %struct.nvkm_fb, ptr %1026, i32 0, i32 1, i32 1
  %1028 = load ptr, ptr %1027, align 4
  %1029 = getelementptr inbounds %struct.nvkm_device, ptr %1028, i32 0, i32 11
  %1030 = load ptr, ptr %1029, align 4
  %1031 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 10, i32 2
  %1032 = load i32, ptr %1031, align 4
  %1033 = getelementptr i8, ptr %1030, i32 %1032
  %1034 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1033) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1035 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 10, i32 5
  store i32 %1034, ptr %1035, align 4
  br label %1036

1036:                                             ; preds = %1024, %1021
  %1037 = phi i32 [ %1023, %1021 ], [ %1034, %1024 ]
  %1038 = icmp eq i32 %1037, %12
  br i1 %1038, label %1039, label %1063

1039:                                             ; preds = %1036
  %1040 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12
  %1041 = load i32, ptr %1040, align 4
  %1042 = load i32, ptr %27, align 4
  %1043 = icmp eq i32 %1041, %1042
  br i1 %1043, label %1044, label %1047

1044:                                             ; preds = %1039
  %1045 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 5
  %1046 = load i32, ptr %1045, align 4
  br label %1059

1047:                                             ; preds = %1039
  %1048 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1049 = load ptr, ptr %1048, align 4
  %1050 = getelementptr inbounds %struct.nvkm_fb, ptr %1049, i32 0, i32 1, i32 1
  %1051 = load ptr, ptr %1050, align 4
  %1052 = getelementptr inbounds %struct.nvkm_device, ptr %1051, i32 0, i32 11
  %1053 = load ptr, ptr %1052, align 4
  %1054 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 2
  %1055 = load i32, ptr %1054, align 4
  %1056 = getelementptr i8, ptr %1053, i32 %1055
  %1057 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1056) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1058 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 5
  store i32 %1057, ptr %1058, align 4
  br label %1059

1059:                                             ; preds = %1047, %1044
  %1060 = phi i32 [ %1046, %1044 ], [ %1057, %1047 ]
  %1061 = and i32 %1060, 65535
  %1062 = icmp eq i32 %1061, %14
  br i1 %1062, label %1495, label %1063

1063:                                             ; preds = %1059, %1036
  %1064 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 13
  %1065 = load i32, ptr %1064, align 4
  %1066 = load i32, ptr %27, align 4
  %1067 = icmp eq i32 %1065, %1066
  br i1 %1067, label %1068, label %1071

1068:                                             ; preds = %1063
  %1069 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 13, i32 5
  %1070 = load i32, ptr %1069, align 4
  br label %1083

1071:                                             ; preds = %1063
  %1072 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1073 = load ptr, ptr %1072, align 4
  %1074 = getelementptr inbounds %struct.nvkm_fb, ptr %1073, i32 0, i32 1, i32 1
  %1075 = load ptr, ptr %1074, align 4
  %1076 = getelementptr inbounds %struct.nvkm_device, ptr %1075, i32 0, i32 11
  %1077 = load ptr, ptr %1076, align 4
  %1078 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 13, i32 2
  %1079 = load i32, ptr %1078, align 4
  %1080 = getelementptr i8, ptr %1077, i32 %1079
  %1081 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1080) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1082 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 13, i32 5
  store i32 %1081, ptr %1082, align 4
  br label %1083

1083:                                             ; preds = %1071, %1068
  %1084 = phi i32 [ %1070, %1068 ], [ %1081, %1071 ]
  %1085 = and i32 %1084, -2
  %1086 = icmp eq i32 %1084, %1085
  br i1 %1086, label %1087, label %1091

1087:                                             ; preds = %1083
  %1088 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 13, i32 1
  %1089 = load i8, ptr %1088, align 4, !range !15
  %1090 = icmp eq i8 %1089, 0
  br i1 %1090, label %1117, label %1091

1091:                                             ; preds = %1087, %1083
  %1092 = load i32, ptr %27, align 4
  store i32 %1092, ptr %1064, align 4
  %1093 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 13, i32 5
  store i32 %1085, ptr %1093, align 4
  %1094 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 13, i32 4
  %1095 = load i32, ptr %1094, align 4
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1115, label %1097

1097:                                             ; preds = %1091
  %1098 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 13, i32 2
  %1099 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 13, i32 3
  br label %1100

1100:                                             ; preds = %1110, %1097
  %1101 = phi i32 [ 0, %1097 ], [ %1112, %1110 ]
  %1102 = phi i32 [ %1095, %1097 ], [ %1113, %1110 ]
  %1103 = and i32 %1102, 1
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1110, label %1105

1105:                                             ; preds = %1100
  %1106 = load ptr, ptr %2, align 4
  %1107 = load i32, ptr %1098, align 4
  %1108 = add i32 %1107, %1101
  %1109 = load i32, ptr %1093, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1106, i32 noundef %1108, i32 noundef %1109) #11
  br label %1110

1110:                                             ; preds = %1105, %1100
  %1111 = load i32, ptr %1099, align 4
  %1112 = add i32 %1111, %1101
  %1113 = lshr i32 %1102, 1
  %1114 = icmp ult i32 %1102, 2
  br i1 %1114, label %1115, label %1100

1115:                                             ; preds = %1110, %1091
  %1116 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 13, i32 1
  store i8 0, ptr %1116, align 4
  br label %1117

1117:                                             ; preds = %1115, %1087
  %1118 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8
  %1119 = load i32, ptr %1118, align 4
  %1120 = load i32, ptr %27, align 4
  %1121 = icmp eq i32 %1119, %1120
  br i1 %1121, label %1122, label %1125

1122:                                             ; preds = %1117
  %1123 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 5
  %1124 = load i32, ptr %1123, align 4
  br label %1137

1125:                                             ; preds = %1117
  %1126 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1127 = load ptr, ptr %1126, align 4
  %1128 = getelementptr inbounds %struct.nvkm_fb, ptr %1127, i32 0, i32 1, i32 1
  %1129 = load ptr, ptr %1128, align 4
  %1130 = getelementptr inbounds %struct.nvkm_device, ptr %1129, i32 0, i32 11
  %1131 = load ptr, ptr %1130, align 4
  %1132 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 2
  %1133 = load i32, ptr %1132, align 4
  %1134 = getelementptr i8, ptr %1131, i32 %1133
  %1135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1134) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1136 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 5
  store i32 %1135, ptr %1136, align 4
  br label %1137

1137:                                             ; preds = %1125, %1122
  %1138 = phi i32 [ %1124, %1122 ], [ %1135, %1125 ]
  %1139 = and i32 %1138, -2
  %1140 = icmp eq i32 %1138, %1139
  br i1 %1140, label %1141, label %1145

1141:                                             ; preds = %1137
  %1142 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 1
  %1143 = load i8, ptr %1142, align 4, !range !15
  %1144 = icmp eq i8 %1143, 0
  br i1 %1144, label %1171, label %1145

1145:                                             ; preds = %1141, %1137
  %1146 = load i32, ptr %27, align 4
  store i32 %1146, ptr %1118, align 4
  %1147 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 5
  store i32 %1139, ptr %1147, align 4
  %1148 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 4
  %1149 = load i32, ptr %1148, align 4
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1169, label %1151

1151:                                             ; preds = %1145
  %1152 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 2
  %1153 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 3
  br label %1154

1154:                                             ; preds = %1164, %1151
  %1155 = phi i32 [ 0, %1151 ], [ %1166, %1164 ]
  %1156 = phi i32 [ %1149, %1151 ], [ %1167, %1164 ]
  %1157 = and i32 %1156, 1
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1164, label %1159

1159:                                             ; preds = %1154
  %1160 = load ptr, ptr %2, align 4
  %1161 = load i32, ptr %1152, align 4
  %1162 = add i32 %1161, %1155
  %1163 = load i32, ptr %1147, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1160, i32 noundef %1162, i32 noundef %1163) #11
  br label %1164

1164:                                             ; preds = %1159, %1154
  %1165 = load i32, ptr %1153, align 4
  %1166 = add i32 %1165, %1155
  %1167 = lshr i32 %1156, 1
  %1168 = icmp ult i32 %1156, 2
  br i1 %1168, label %1169, label %1154

1169:                                             ; preds = %1164, %1145
  %1170 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 1
  store i8 0, ptr %1170, align 4
  br label %1171

1171:                                             ; preds = %1169, %1141
  %1172 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 63
  %1173 = load i32, ptr %27, align 4
  store i32 %1173, ptr %1172, align 4
  %1174 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 63, i32 5
  store i32 0, ptr %1174, align 4
  %1175 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 63, i32 4
  %1176 = load i32, ptr %1175, align 4
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1198, label %1178

1178:                                             ; preds = %1171
  %1179 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 63, i32 2
  %1180 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 63, i32 3
  br label %1181

1181:                                             ; preds = %1191, %1178
  %1182 = phi i32 [ 0, %1178 ], [ %1193, %1191 ]
  %1183 = phi i32 [ %1176, %1178 ], [ %1194, %1191 ]
  %1184 = and i32 %1183, 1
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1191, label %1186

1186:                                             ; preds = %1181
  %1187 = load ptr, ptr %2, align 4
  %1188 = load i32, ptr %1179, align 4
  %1189 = add i32 %1188, %1182
  %1190 = load i32, ptr %1174, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1187, i32 noundef %1189, i32 noundef %1190) #11
  br label %1191

1191:                                             ; preds = %1186, %1181
  %1192 = load i32, ptr %1180, align 4
  %1193 = add i32 %1192, %1182
  %1194 = lshr i32 %1183, 1
  %1195 = icmp ult i32 %1183, 2
  br i1 %1195, label %1196, label %1181

1196:                                             ; preds = %1191
  %1197 = load i32, ptr %27, align 4
  br label %1198

1198:                                             ; preds = %1196, %1171
  %1199 = phi i32 [ %1197, %1196 ], [ %1173, %1171 ]
  %1200 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 11
  %1201 = load i32, ptr %1200, align 4
  %1202 = icmp eq i32 %1201, %1199
  br i1 %1202, label %1203, label %1206

1203:                                             ; preds = %1198
  %1204 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 11, i32 5
  %1205 = load i32, ptr %1204, align 4
  br label %1218

1206:                                             ; preds = %1198
  %1207 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1208 = load ptr, ptr %1207, align 4
  %1209 = getelementptr inbounds %struct.nvkm_fb, ptr %1208, i32 0, i32 1, i32 1
  %1210 = load ptr, ptr %1209, align 4
  %1211 = getelementptr inbounds %struct.nvkm_device, ptr %1210, i32 0, i32 11
  %1212 = load ptr, ptr %1211, align 4
  %1213 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 11, i32 2
  %1214 = load i32, ptr %1213, align 4
  %1215 = getelementptr i8, ptr %1212, i32 %1214
  %1216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1215) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1217 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 11, i32 5
  store i32 %1216, ptr %1217, align 4
  br label %1218

1218:                                             ; preds = %1206, %1203
  %1219 = phi i32 [ %1205, %1203 ], [ %1216, %1206 ]
  %1220 = and i32 %1219, 65535
  %1221 = or i32 %1220, %15
  %1222 = icmp eq i32 %1219, %1221
  br i1 %1222, label %1223, label %1227

1223:                                             ; preds = %1218
  %1224 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 11, i32 1
  %1225 = load i8, ptr %1224, align 4, !range !15
  %1226 = icmp eq i8 %1225, 0
  br i1 %1226, label %1253, label %1227

1227:                                             ; preds = %1223, %1218
  %1228 = load i32, ptr %27, align 4
  store i32 %1228, ptr %1200, align 4
  %1229 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 11, i32 5
  store i32 %1221, ptr %1229, align 4
  %1230 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 11, i32 4
  %1231 = load i32, ptr %1230, align 4
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1251, label %1233

1233:                                             ; preds = %1227
  %1234 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 11, i32 2
  %1235 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 11, i32 3
  br label %1236

1236:                                             ; preds = %1246, %1233
  %1237 = phi i32 [ 0, %1233 ], [ %1248, %1246 ]
  %1238 = phi i32 [ %1231, %1233 ], [ %1249, %1246 ]
  %1239 = and i32 %1238, 1
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1246, label %1241

1241:                                             ; preds = %1236
  %1242 = load ptr, ptr %2, align 4
  %1243 = load i32, ptr %1234, align 4
  %1244 = add i32 %1243, %1237
  %1245 = load i32, ptr %1229, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1242, i32 noundef %1244, i32 noundef %1245) #11
  br label %1246

1246:                                             ; preds = %1241, %1236
  %1247 = load i32, ptr %1235, align 4
  %1248 = add i32 %1247, %1237
  %1249 = lshr i32 %1238, 1
  %1250 = icmp ult i32 %1238, 2
  br i1 %1250, label %1251, label %1236

1251:                                             ; preds = %1246, %1227
  %1252 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 11, i32 1
  store i8 0, ptr %1252, align 4
  br label %1253

1253:                                             ; preds = %1251, %1223
  %1254 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12
  %1255 = load i32, ptr %1254, align 4
  %1256 = load i32, ptr %27, align 4
  %1257 = icmp eq i32 %1255, %1256
  br i1 %1257, label %1258, label %1261

1258:                                             ; preds = %1253
  %1259 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 5
  %1260 = load i32, ptr %1259, align 4
  br label %1273

1261:                                             ; preds = %1253
  %1262 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1263 = load ptr, ptr %1262, align 4
  %1264 = getelementptr inbounds %struct.nvkm_fb, ptr %1263, i32 0, i32 1, i32 1
  %1265 = load ptr, ptr %1264, align 4
  %1266 = getelementptr inbounds %struct.nvkm_device, ptr %1265, i32 0, i32 11
  %1267 = load ptr, ptr %1266, align 4
  %1268 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 2
  %1269 = load i32, ptr %1268, align 4
  %1270 = getelementptr i8, ptr %1267, i32 %1269
  %1271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1270) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1272 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 5
  store i32 %1271, ptr %1272, align 4
  br label %1273

1273:                                             ; preds = %1261, %1258
  %1274 = phi i32 [ %1260, %1258 ], [ %1271, %1261 ]
  %1275 = and i32 %1274, -65536
  %1276 = or i32 %1275, %14
  %1277 = icmp eq i32 %1274, %1276
  br i1 %1277, label %1278, label %1282

1278:                                             ; preds = %1273
  %1279 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 1
  %1280 = load i8, ptr %1279, align 4, !range !15
  %1281 = icmp eq i8 %1280, 0
  br i1 %1281, label %1308, label %1282

1282:                                             ; preds = %1278, %1273
  %1283 = load i32, ptr %27, align 4
  store i32 %1283, ptr %1254, align 4
  %1284 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 5
  store i32 %1276, ptr %1284, align 4
  %1285 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 4
  %1286 = load i32, ptr %1285, align 4
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1306, label %1288

1288:                                             ; preds = %1282
  %1289 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 2
  %1290 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 3
  br label %1291

1291:                                             ; preds = %1301, %1288
  %1292 = phi i32 [ 0, %1288 ], [ %1303, %1301 ]
  %1293 = phi i32 [ %1286, %1288 ], [ %1304, %1301 ]
  %1294 = and i32 %1293, 1
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1301, label %1296

1296:                                             ; preds = %1291
  %1297 = load ptr, ptr %2, align 4
  %1298 = load i32, ptr %1289, align 4
  %1299 = add i32 %1298, %1292
  %1300 = load i32, ptr %1284, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1297, i32 noundef %1299, i32 noundef %1300) #11
  br label %1301

1301:                                             ; preds = %1296, %1291
  %1302 = load i32, ptr %1290, align 4
  %1303 = add i32 %1302, %1292
  %1304 = lshr i32 %1293, 1
  %1305 = icmp ult i32 %1293, 2
  br i1 %1305, label %1306, label %1291

1306:                                             ; preds = %1301, %1282
  %1307 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 12, i32 1
  store i8 0, ptr %1307, align 4
  br label %1308

1308:                                             ; preds = %1306, %1278
  %1309 = load i32, ptr %27, align 4
  store i32 %1309, ptr %1017, align 4
  %1310 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 10, i32 5
  store i32 %12, ptr %1310, align 4
  %1311 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 10, i32 4
  %1312 = load i32, ptr %1311, align 4
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1334, label %1314

1314:                                             ; preds = %1308
  %1315 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 10, i32 2
  %1316 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 10, i32 3
  br label %1317

1317:                                             ; preds = %1327, %1314
  %1318 = phi i32 [ 0, %1314 ], [ %1329, %1327 ]
  %1319 = phi i32 [ %1312, %1314 ], [ %1330, %1327 ]
  %1320 = and i32 %1319, 1
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1327, label %1322

1322:                                             ; preds = %1317
  %1323 = load ptr, ptr %2, align 4
  %1324 = load i32, ptr %1315, align 4
  %1325 = add i32 %1324, %1318
  %1326 = load i32, ptr %1310, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1323, i32 noundef %1325, i32 noundef %1326) #11
  br label %1327

1327:                                             ; preds = %1322, %1317
  %1328 = load i32, ptr %1316, align 4
  %1329 = add i32 %1328, %1318
  %1330 = lshr i32 %1319, 1
  %1331 = icmp ult i32 %1319, 2
  br i1 %1331, label %1332, label %1317

1332:                                             ; preds = %1327
  %1333 = load i32, ptr %27, align 4
  br label %1334

1334:                                             ; preds = %1332, %1308
  %1335 = phi i32 [ %1333, %1332 ], [ %1309, %1308 ]
  %1336 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9
  %1337 = load i32, ptr %1336, align 4
  %1338 = icmp eq i32 %1337, %1335
  br i1 %1338, label %1339, label %1342

1339:                                             ; preds = %1334
  %1340 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  %1341 = load i32, ptr %1340, align 4
  br label %1354

1342:                                             ; preds = %1334
  %1343 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1344 = load ptr, ptr %1343, align 4
  %1345 = getelementptr inbounds %struct.nvkm_fb, ptr %1344, i32 0, i32 1, i32 1
  %1346 = load ptr, ptr %1345, align 4
  %1347 = getelementptr inbounds %struct.nvkm_device, ptr %1346, i32 0, i32 11
  %1348 = load ptr, ptr %1347, align 4
  %1349 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 2
  %1350 = load i32, ptr %1349, align 4
  %1351 = getelementptr i8, ptr %1348, i32 %1350
  %1352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1351) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1353 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  store i32 %1352, ptr %1353, align 4
  br label %1354

1354:                                             ; preds = %1342, %1339
  %1355 = phi i32 [ %1341, %1339 ], [ %1352, %1342 ]
  %1356 = or i32 %1355, 524288
  %1357 = icmp eq i32 %1355, %1356
  br i1 %1357, label %1358, label %1362

1358:                                             ; preds = %1354
  %1359 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 1
  %1360 = load i8, ptr %1359, align 4, !range !15
  %1361 = icmp eq i8 %1360, 0
  br i1 %1361, label %1388, label %1362

1362:                                             ; preds = %1358, %1354
  %1363 = load i32, ptr %27, align 4
  store i32 %1363, ptr %1336, align 4
  %1364 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  store i32 %1356, ptr %1364, align 4
  %1365 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 4
  %1366 = load i32, ptr %1365, align 4
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1386, label %1368

1368:                                             ; preds = %1362
  %1369 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 2
  %1370 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 3
  br label %1371

1371:                                             ; preds = %1381, %1368
  %1372 = phi i32 [ 0, %1368 ], [ %1383, %1381 ]
  %1373 = phi i32 [ %1366, %1368 ], [ %1384, %1381 ]
  %1374 = and i32 %1373, 1
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1381, label %1376

1376:                                             ; preds = %1371
  %1377 = load ptr, ptr %2, align 4
  %1378 = load i32, ptr %1369, align 4
  %1379 = add i32 %1378, %1372
  %1380 = load i32, ptr %1364, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1377, i32 noundef %1379, i32 noundef %1380) #11
  br label %1381

1381:                                             ; preds = %1376, %1371
  %1382 = load i32, ptr %1370, align 4
  %1383 = add i32 %1382, %1372
  %1384 = lshr i32 %1373, 1
  %1385 = icmp ult i32 %1373, 2
  br i1 %1385, label %1386, label %1371

1386:                                             ; preds = %1381, %1362
  %1387 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 1
  store i8 0, ptr %1387, align 4
  br label %1388

1388:                                             ; preds = %1386, %1358
  %1389 = load i32, ptr %1118, align 4
  %1390 = load i32, ptr %27, align 4
  %1391 = icmp eq i32 %1389, %1390
  br i1 %1391, label %1392, label %1395

1392:                                             ; preds = %1388
  %1393 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 5
  %1394 = load i32, ptr %1393, align 4
  br label %1407

1395:                                             ; preds = %1388
  %1396 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1397 = load ptr, ptr %1396, align 4
  %1398 = getelementptr inbounds %struct.nvkm_fb, ptr %1397, i32 0, i32 1, i32 1
  %1399 = load ptr, ptr %1398, align 4
  %1400 = getelementptr inbounds %struct.nvkm_device, ptr %1399, i32 0, i32 11
  %1401 = load ptr, ptr %1400, align 4
  %1402 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 2
  %1403 = load i32, ptr %1402, align 4
  %1404 = getelementptr i8, ptr %1401, i32 %1403
  %1405 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1404) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1406 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 5
  store i32 %1405, ptr %1406, align 4
  br label %1407

1407:                                             ; preds = %1395, %1392
  %1408 = phi i32 [ %1394, %1392 ], [ %1405, %1395 ]
  %1409 = or i32 %1408, 1
  %1410 = icmp eq i32 %1408, %1409
  br i1 %1410, label %1411, label %1415

1411:                                             ; preds = %1407
  %1412 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 1
  %1413 = load i8, ptr %1412, align 4, !range !15
  %1414 = icmp eq i8 %1413, 0
  br i1 %1414, label %1441, label %1415

1415:                                             ; preds = %1411, %1407
  %1416 = load i32, ptr %27, align 4
  store i32 %1416, ptr %1118, align 4
  %1417 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 5
  store i32 %1409, ptr %1417, align 4
  %1418 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 4
  %1419 = load i32, ptr %1418, align 4
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1439, label %1421

1421:                                             ; preds = %1415
  %1422 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 2
  %1423 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 3
  br label %1424

1424:                                             ; preds = %1434, %1421
  %1425 = phi i32 [ 0, %1421 ], [ %1436, %1434 ]
  %1426 = phi i32 [ %1419, %1421 ], [ %1437, %1434 ]
  %1427 = and i32 %1426, 1
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1434, label %1429

1429:                                             ; preds = %1424
  %1430 = load ptr, ptr %2, align 4
  %1431 = load i32, ptr %1422, align 4
  %1432 = add i32 %1431, %1425
  %1433 = load i32, ptr %1417, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1430, i32 noundef %1432, i32 noundef %1433) #11
  br label %1434

1434:                                             ; preds = %1429, %1424
  %1435 = load i32, ptr %1423, align 4
  %1436 = add i32 %1435, %1425
  %1437 = lshr i32 %1426, 1
  %1438 = icmp ult i32 %1426, 2
  br i1 %1438, label %1439, label %1424

1439:                                             ; preds = %1434, %1415
  %1440 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 8, i32 1
  store i8 0, ptr %1440, align 4
  br label %1441

1441:                                             ; preds = %1439, %1411
  %1442 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_wait(ptr noundef %1442, i32 noundef 1274768, i32 noundef 131072, i32 noundef 131072, i32 noundef 64000) #11
  %1443 = load i32, ptr %1336, align 4
  %1444 = load i32, ptr %27, align 4
  %1445 = icmp eq i32 %1443, %1444
  br i1 %1445, label %1446, label %1449

1446:                                             ; preds = %1441
  %1447 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  %1448 = load i32, ptr %1447, align 4
  br label %1461

1449:                                             ; preds = %1441
  %1450 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1451 = load ptr, ptr %1450, align 4
  %1452 = getelementptr inbounds %struct.nvkm_fb, ptr %1451, i32 0, i32 1, i32 1
  %1453 = load ptr, ptr %1452, align 4
  %1454 = getelementptr inbounds %struct.nvkm_device, ptr %1453, i32 0, i32 11
  %1455 = load ptr, ptr %1454, align 4
  %1456 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 2
  %1457 = load i32, ptr %1456, align 4
  %1458 = getelementptr i8, ptr %1455, i32 %1457
  %1459 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1458) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1460 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  store i32 %1459, ptr %1460, align 4
  br label %1461

1461:                                             ; preds = %1449, %1446
  %1462 = phi i32 [ %1448, %1446 ], [ %1459, %1449 ]
  %1463 = and i32 %1462, -524289
  %1464 = icmp eq i32 %1462, %1463
  br i1 %1464, label %1465, label %1469

1465:                                             ; preds = %1461
  %1466 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 1
  %1467 = load i8, ptr %1466, align 4, !range !15
  %1468 = icmp eq i8 %1467, 0
  br i1 %1468, label %1495, label %1469

1469:                                             ; preds = %1465, %1461
  %1470 = load i32, ptr %27, align 4
  store i32 %1470, ptr %1336, align 4
  %1471 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  store i32 %1463, ptr %1471, align 4
  %1472 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 4
  %1473 = load i32, ptr %1472, align 4
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1493, label %1475

1475:                                             ; preds = %1469
  %1476 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 2
  %1477 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 3
  br label %1478

1478:                                             ; preds = %1488, %1475
  %1479 = phi i32 [ 0, %1475 ], [ %1490, %1488 ]
  %1480 = phi i32 [ %1473, %1475 ], [ %1491, %1488 ]
  %1481 = and i32 %1480, 1
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1488, label %1483

1483:                                             ; preds = %1478
  %1484 = load ptr, ptr %2, align 4
  %1485 = load i32, ptr %1476, align 4
  %1486 = add i32 %1485, %1479
  %1487 = load i32, ptr %1471, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1484, i32 noundef %1486, i32 noundef %1487) #11
  br label %1488

1488:                                             ; preds = %1483, %1478
  %1489 = load i32, ptr %1477, align 4
  %1490 = add i32 %1489, %1479
  %1491 = lshr i32 %1480, 1
  %1492 = icmp ult i32 %1480, 2
  br i1 %1492, label %1493, label %1478

1493:                                             ; preds = %1488, %1469
  %1494 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 9, i32 1
  store i8 0, ptr %1494, align 4
  br label %1495

1495:                                             ; preds = %1493, %1465, %1059
  %1496 = load i32, ptr %804, align 4
  %1497 = load i32, ptr %27, align 4
  %1498 = icmp eq i32 %1496, %1497
  br i1 %1498, label %1499, label %1502

1499:                                             ; preds = %1495
  %1500 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  %1501 = load i32, ptr %1500, align 4
  br label %1514

1502:                                             ; preds = %1495
  %1503 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1504 = load ptr, ptr %1503, align 4
  %1505 = getelementptr inbounds %struct.nvkm_fb, ptr %1504, i32 0, i32 1, i32 1
  %1506 = load ptr, ptr %1505, align 4
  %1507 = getelementptr inbounds %struct.nvkm_device, ptr %1506, i32 0, i32 11
  %1508 = load ptr, ptr %1507, align 4
  %1509 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %1510 = load i32, ptr %1509, align 4
  %1511 = getelementptr i8, ptr %1508, i32 %1510
  %1512 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1511) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1513 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %1512, ptr %1513, align 4
  br label %1514

1514:                                             ; preds = %1502, %1499
  %1515 = phi i32 [ %1501, %1499 ], [ %1512, %1502 ]
  %1516 = or i32 %1515, 16
  %1517 = icmp eq i32 %1515, %1516
  br i1 %1517, label %1518, label %1522

1518:                                             ; preds = %1514
  %1519 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  %1520 = load i8, ptr %1519, align 4, !range !15
  %1521 = icmp eq i8 %1520, 0
  br i1 %1521, label %1548, label %1522

1522:                                             ; preds = %1518, %1514
  %1523 = load i32, ptr %27, align 4
  store i32 %1523, ptr %804, align 4
  %1524 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %1516, ptr %1524, align 4
  %1525 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 4
  %1526 = load i32, ptr %1525, align 4
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1546, label %1528

1528:                                             ; preds = %1522
  %1529 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %1530 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 3
  br label %1531

1531:                                             ; preds = %1541, %1528
  %1532 = phi i32 [ 0, %1528 ], [ %1543, %1541 ]
  %1533 = phi i32 [ %1526, %1528 ], [ %1544, %1541 ]
  %1534 = and i32 %1533, 1
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %1541, label %1536

1536:                                             ; preds = %1531
  %1537 = load ptr, ptr %2, align 4
  %1538 = load i32, ptr %1529, align 4
  %1539 = add i32 %1538, %1532
  %1540 = load i32, ptr %1524, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1537, i32 noundef %1539, i32 noundef %1540) #11
  br label %1541

1541:                                             ; preds = %1536, %1531
  %1542 = load i32, ptr %1530, align 4
  %1543 = add i32 %1542, %1532
  %1544 = lshr i32 %1533, 1
  %1545 = icmp ult i32 %1533, 2
  br i1 %1545, label %1546, label %1531

1546:                                             ; preds = %1541, %1522
  %1547 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  store i8 0, ptr %1547, align 4
  br label %1548

1548:                                             ; preds = %1546, %1518
  %1549 = load i32, ptr %804, align 4
  %1550 = load i32, ptr %27, align 4
  %1551 = icmp eq i32 %1549, %1550
  br i1 %1551, label %1552, label %1555

1552:                                             ; preds = %1548
  %1553 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  %1554 = load i32, ptr %1553, align 4
  br label %1567

1555:                                             ; preds = %1548
  %1556 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1557 = load ptr, ptr %1556, align 4
  %1558 = getelementptr inbounds %struct.nvkm_fb, ptr %1557, i32 0, i32 1, i32 1
  %1559 = load ptr, ptr %1558, align 4
  %1560 = getelementptr inbounds %struct.nvkm_device, ptr %1559, i32 0, i32 11
  %1561 = load ptr, ptr %1560, align 4
  %1562 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %1563 = load i32, ptr %1562, align 4
  %1564 = getelementptr i8, ptr %1561, i32 %1563
  %1565 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1564) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1566 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %1565, ptr %1566, align 4
  br label %1567

1567:                                             ; preds = %1555, %1552
  %1568 = phi i32 [ %1554, %1552 ], [ %1565, %1555 ]
  %1569 = and i32 %1568, -4
  %1570 = or i32 %1569, 1
  %1571 = icmp eq i32 %1568, %1570
  br i1 %1571, label %1572, label %1576

1572:                                             ; preds = %1567
  %1573 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  %1574 = load i8, ptr %1573, align 4, !range !15
  %1575 = icmp eq i8 %1574, 0
  br i1 %1575, label %1602, label %1576

1576:                                             ; preds = %1572, %1567
  %1577 = load i32, ptr %27, align 4
  store i32 %1577, ptr %804, align 4
  %1578 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %1570, ptr %1578, align 4
  %1579 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 4
  %1580 = load i32, ptr %1579, align 4
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1600, label %1582

1582:                                             ; preds = %1576
  %1583 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %1584 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 3
  br label %1585

1585:                                             ; preds = %1595, %1582
  %1586 = phi i32 [ 0, %1582 ], [ %1597, %1595 ]
  %1587 = phi i32 [ %1580, %1582 ], [ %1598, %1595 ]
  %1588 = and i32 %1587, 1
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1595, label %1590

1590:                                             ; preds = %1585
  %1591 = load ptr, ptr %2, align 4
  %1592 = load i32, ptr %1583, align 4
  %1593 = add i32 %1592, %1586
  %1594 = load i32, ptr %1578, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1591, i32 noundef %1593, i32 noundef %1594) #11
  br label %1595

1595:                                             ; preds = %1590, %1585
  %1596 = load i32, ptr %1584, align 4
  %1597 = add i32 %1596, %1586
  %1598 = lshr i32 %1587, 1
  %1599 = icmp ult i32 %1587, 2
  br i1 %1599, label %1600, label %1585

1600:                                             ; preds = %1595, %1576
  %1601 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  store i8 0, ptr %1601, align 4
  br label %1602

1602:                                             ; preds = %1600, %1572
  %1603 = load i32, ptr %804, align 4
  %1604 = load i32, ptr %27, align 4
  %1605 = icmp eq i32 %1603, %1604
  br i1 %1605, label %1606, label %1609

1606:                                             ; preds = %1602
  %1607 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  %1608 = load i32, ptr %1607, align 4
  br label %1621

1609:                                             ; preds = %1602
  %1610 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1611 = load ptr, ptr %1610, align 4
  %1612 = getelementptr inbounds %struct.nvkm_fb, ptr %1611, i32 0, i32 1, i32 1
  %1613 = load ptr, ptr %1612, align 4
  %1614 = getelementptr inbounds %struct.nvkm_device, ptr %1613, i32 0, i32 11
  %1615 = load ptr, ptr %1614, align 4
  %1616 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %1617 = load i32, ptr %1616, align 4
  %1618 = getelementptr i8, ptr %1615, i32 %1617
  %1619 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1618) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1620 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %1619, ptr %1620, align 4
  br label %1621

1621:                                             ; preds = %1609, %1606
  %1622 = phi i32 [ %1608, %1606 ], [ %1619, %1609 ]
  %1623 = and i32 %1622, -65537
  %1624 = icmp eq i32 %1622, %1623
  br i1 %1624, label %1625, label %1629

1625:                                             ; preds = %1621
  %1626 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  %1627 = load i8, ptr %1626, align 4, !range !15
  %1628 = icmp eq i8 %1627, 0
  br i1 %1628, label %1655, label %1629

1629:                                             ; preds = %1625, %1621
  %1630 = load i32, ptr %27, align 4
  store i32 %1630, ptr %804, align 4
  %1631 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 5
  store i32 %1623, ptr %1631, align 4
  %1632 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 4
  %1633 = load i32, ptr %1632, align 4
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1653, label %1635

1635:                                             ; preds = %1629
  %1636 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 2
  %1637 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 3
  br label %1638

1638:                                             ; preds = %1648, %1635
  %1639 = phi i32 [ 0, %1635 ], [ %1650, %1648 ]
  %1640 = phi i32 [ %1633, %1635 ], [ %1651, %1648 ]
  %1641 = and i32 %1640, 1
  %1642 = icmp eq i32 %1641, 0
  br i1 %1642, label %1648, label %1643

1643:                                             ; preds = %1638
  %1644 = load ptr, ptr %2, align 4
  %1645 = load i32, ptr %1636, align 4
  %1646 = add i32 %1645, %1639
  %1647 = load i32, ptr %1631, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1644, i32 noundef %1646, i32 noundef %1647) #11
  br label %1648

1648:                                             ; preds = %1643, %1638
  %1649 = load i32, ptr %1637, align 4
  %1650 = add i32 %1649, %1639
  %1651 = lshr i32 %1640, 1
  %1652 = icmp ult i32 %1640, 2
  br i1 %1652, label %1653, label %1638

1653:                                             ; preds = %1648, %1629
  %1654 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 62, i32 1
  store i8 0, ptr %1654, align 4
  br label %1655

1655:                                             ; preds = %1653, %1625
  %1656 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 2
  %1657 = load i32, ptr %1656, align 4
  %1658 = icmp eq i32 %1657, 0
  br i1 %1658, label %1761, label %1659

1659:                                             ; preds = %1655
  %1660 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3
  %1661 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 4, i32 %24
  %1662 = load i32, ptr %1661, align 4
  %1663 = load i32, ptr %1660, align 4
  %1664 = load i32, ptr %27, align 4
  %1665 = icmp eq i32 %1663, %1664
  br i1 %1665, label %1666, label %1669

1666:                                             ; preds = %1659
  %1667 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 5
  %1668 = load i32, ptr %1667, align 4
  br label %1679

1669:                                             ; preds = %1659
  %1670 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1671 = load ptr, ptr %1670, align 4
  %1672 = getelementptr inbounds %struct.nvkm_fb, ptr %1671, i32 0, i32 1, i32 1
  %1673 = load ptr, ptr %1672, align 4
  %1674 = getelementptr inbounds %struct.nvkm_device, ptr %1673, i32 0, i32 11
  %1675 = load ptr, ptr %1674, align 4
  %1676 = getelementptr i8, ptr %1675, i32 %1657
  %1677 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1676) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1678 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 5
  store i32 %1677, ptr %1678, align 4
  br label %1679

1679:                                             ; preds = %1669, %1666
  %1680 = phi i32 [ %1668, %1666 ], [ %1677, %1669 ]
  %1681 = and i32 %1680, -12289
  %1682 = or i32 %1681, %1662
  %1683 = icmp eq i32 %1680, %1682
  br i1 %1683, label %1684, label %1688

1684:                                             ; preds = %1679
  %1685 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 1
  %1686 = load i8, ptr %1685, align 4, !range !15
  %1687 = icmp eq i8 %1686, 0
  br i1 %1687, label %1713, label %1688

1688:                                             ; preds = %1684, %1679
  %1689 = load i32, ptr %27, align 4
  store i32 %1689, ptr %1660, align 4
  %1690 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 5
  store i32 %1682, ptr %1690, align 4
  %1691 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 4
  %1692 = load i32, ptr %1691, align 4
  %1693 = icmp eq i32 %1692, 0
  br i1 %1693, label %1711, label %1694

1694:                                             ; preds = %1688
  %1695 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 3
  br label %1696

1696:                                             ; preds = %1706, %1694
  %1697 = phi i32 [ 0, %1694 ], [ %1708, %1706 ]
  %1698 = phi i32 [ %1692, %1694 ], [ %1709, %1706 ]
  %1699 = and i32 %1698, 1
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1706, label %1701

1701:                                             ; preds = %1696
  %1702 = load ptr, ptr %2, align 4
  %1703 = load i32, ptr %1656, align 4
  %1704 = add i32 %1703, %1697
  %1705 = load i32, ptr %1690, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1702, i32 noundef %1704, i32 noundef %1705) #11
  br label %1706

1706:                                             ; preds = %1701, %1696
  %1707 = load i32, ptr %1695, align 4
  %1708 = add i32 %1707, %1697
  %1709 = lshr i32 %1698, 1
  %1710 = icmp ult i32 %1698, 2
  br i1 %1710, label %1711, label %1696

1711:                                             ; preds = %1706, %1688
  %1712 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 1
  store i8 0, ptr %1712, align 4
  br label %1713

1713:                                             ; preds = %1711, %1684
  %1714 = load i32, ptr %1660, align 4
  %1715 = load i32, ptr %27, align 4
  %1716 = icmp eq i32 %1714, %1715
  br i1 %1716, label %1717, label %1720

1717:                                             ; preds = %1713
  %1718 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 5
  %1719 = load i32, ptr %1718, align 4
  br label %1731

1720:                                             ; preds = %1713
  %1721 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1722 = load ptr, ptr %1721, align 4
  %1723 = getelementptr inbounds %struct.nvkm_fb, ptr %1722, i32 0, i32 1, i32 1
  %1724 = load ptr, ptr %1723, align 4
  %1725 = getelementptr inbounds %struct.nvkm_device, ptr %1724, i32 0, i32 11
  %1726 = load ptr, ptr %1725, align 4
  %1727 = load i32, ptr %1656, align 4
  %1728 = getelementptr i8, ptr %1726, i32 %1727
  %1729 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1728) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1730 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 5
  store i32 %1729, ptr %1730, align 4
  br label %1731

1731:                                             ; preds = %1720, %1717
  %1732 = phi i32 [ %1719, %1717 ], [ %1729, %1720 ]
  %1733 = icmp eq i32 %1680, %1732
  br i1 %1733, label %1761, label %1734

1734:                                             ; preds = %1731
  %1735 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7
  %1736 = load i32, ptr %27, align 4
  store i32 %1736, ptr %1735, align 4
  %1737 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 5
  store i32 1, ptr %1737, align 4
  %1738 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 4
  %1739 = load i32, ptr %1738, align 4
  %1740 = icmp eq i32 %1739, 0
  br i1 %1740, label %1759, label %1741

1741:                                             ; preds = %1734
  %1742 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 2
  %1743 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 3
  br label %1744

1744:                                             ; preds = %1754, %1741
  %1745 = phi i32 [ 0, %1741 ], [ %1756, %1754 ]
  %1746 = phi i32 [ %1739, %1741 ], [ %1757, %1754 ]
  %1747 = and i32 %1746, 1
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %1754, label %1749

1749:                                             ; preds = %1744
  %1750 = load ptr, ptr %2, align 4
  %1751 = load i32, ptr %1742, align 4
  %1752 = add i32 %1751, %1745
  %1753 = load i32, ptr %1737, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1750, i32 noundef %1752, i32 noundef %1753) #11
  br label %1754

1754:                                             ; preds = %1749, %1744
  %1755 = load i32, ptr %1743, align 4
  %1756 = add i32 %1755, %1745
  %1757 = lshr i32 %1746, 1
  %1758 = icmp ult i32 %1746, 2
  br i1 %1758, label %1759, label %1744

1759:                                             ; preds = %1754, %1734
  %1760 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %1760, i32 noundef 64000) #11
  br label %1761

1761:                                             ; preds = %1759, %1731, %1655
  %1762 = load i32, ptr %18, align 4
  %1763 = and i32 %1762, 4096
  %1764 = icmp eq i32 %1763, 0
  br i1 %1764, label %1765, label %1769

1765:                                             ; preds = %1761
  %1766 = load i32, ptr %685, align 4
  %1767 = and i32 %1766, 524288
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1824, label %1769

1769:                                             ; preds = %1765, %1761
  %1770 = load i32, ptr %750, align 4
  %1771 = load i32, ptr %27, align 4
  %1772 = icmp eq i32 %1770, %1771
  br i1 %1772, label %1773, label %1776

1773:                                             ; preds = %1769
  %1774 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  %1775 = load i32, ptr %1774, align 4
  br label %1788

1776:                                             ; preds = %1769
  %1777 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1778 = load ptr, ptr %1777, align 4
  %1779 = getelementptr inbounds %struct.nvkm_fb, ptr %1778, i32 0, i32 1, i32 1
  %1780 = load ptr, ptr %1779, align 4
  %1781 = getelementptr inbounds %struct.nvkm_device, ptr %1780, i32 0, i32 11
  %1782 = load ptr, ptr %1781, align 4
  %1783 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 2
  %1784 = load i32, ptr %1783, align 4
  %1785 = getelementptr i8, ptr %1782, i32 %1784
  %1786 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1785) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1787 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  store i32 %1786, ptr %1787, align 4
  br label %1788

1788:                                             ; preds = %1776, %1773
  %1789 = phi i32 [ %1775, %1773 ], [ %1786, %1776 ]
  %1790 = or i32 %1789, 65536
  %1791 = icmp eq i32 %1789, %1790
  br i1 %1791, label %1792, label %1796

1792:                                             ; preds = %1788
  %1793 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 1
  %1794 = load i8, ptr %1793, align 4, !range !15
  %1795 = icmp eq i8 %1794, 0
  br i1 %1795, label %1822, label %1796

1796:                                             ; preds = %1792, %1788
  %1797 = load i32, ptr %27, align 4
  store i32 %1797, ptr %750, align 4
  %1798 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  store i32 %1790, ptr %1798, align 4
  %1799 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 4
  %1800 = load i32, ptr %1799, align 4
  %1801 = icmp eq i32 %1800, 0
  br i1 %1801, label %1820, label %1802

1802:                                             ; preds = %1796
  %1803 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 2
  %1804 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 3
  br label %1805

1805:                                             ; preds = %1815, %1802
  %1806 = phi i32 [ 0, %1802 ], [ %1817, %1815 ]
  %1807 = phi i32 [ %1800, %1802 ], [ %1818, %1815 ]
  %1808 = and i32 %1807, 1
  %1809 = icmp eq i32 %1808, 0
  br i1 %1809, label %1815, label %1810

1810:                                             ; preds = %1805
  %1811 = load ptr, ptr %2, align 4
  %1812 = load i32, ptr %1803, align 4
  %1813 = add i32 %1812, %1806
  %1814 = load i32, ptr %1798, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1811, i32 noundef %1813, i32 noundef %1814) #11
  br label %1815

1815:                                             ; preds = %1810, %1805
  %1816 = load i32, ptr %1804, align 4
  %1817 = add i32 %1816, %1806
  %1818 = lshr i32 %1807, 1
  %1819 = icmp ult i32 %1807, 2
  br i1 %1819, label %1820, label %1805

1820:                                             ; preds = %1815, %1796
  %1821 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 1
  store i8 0, ptr %1821, align 4
  br label %1822

1822:                                             ; preds = %1820, %1792
  %1823 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %1823, i32 noundef 20000) #11
  br label %1824

1824:                                             ; preds = %1822, %1765
  %1825 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 8
  %1826 = load i32, ptr %1825, align 8
  %1827 = icmp eq i32 %1826, 2
  br i1 %1827, label %1886, label %1828

1828:                                             ; preds = %1824
  %1829 = load i32, ptr %685, align 4
  %1830 = and i32 %1829, 1048576
  %1831 = icmp eq i32 %1830, 0
  br i1 %1831, label %1886, label %1832

1832:                                             ; preds = %1828
  %1833 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42
  %1834 = load i32, ptr %1833, align 4
  %1835 = load i32, ptr %27, align 4
  %1836 = icmp eq i32 %1834, %1835
  br i1 %1836, label %1837, label %1840

1837:                                             ; preds = %1832
  %1838 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  %1839 = load i32, ptr %1838, align 4
  br label %1852

1840:                                             ; preds = %1832
  %1841 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1842 = load ptr, ptr %1841, align 4
  %1843 = getelementptr inbounds %struct.nvkm_fb, ptr %1842, i32 0, i32 1, i32 1
  %1844 = load ptr, ptr %1843, align 4
  %1845 = getelementptr inbounds %struct.nvkm_device, ptr %1844, i32 0, i32 11
  %1846 = load ptr, ptr %1845, align 4
  %1847 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 2
  %1848 = load i32, ptr %1847, align 4
  %1849 = getelementptr i8, ptr %1846, i32 %1848
  %1850 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1849) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1851 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  store i32 %1850, ptr %1851, align 4
  br label %1852

1852:                                             ; preds = %1840, %1837
  %1853 = phi i32 [ %1839, %1837 ], [ %1850, %1840 ]
  %1854 = or i32 %1853, -2147483648
  %1855 = icmp eq i32 %1853, %1854
  br i1 %1855, label %1856, label %1860

1856:                                             ; preds = %1852
  %1857 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 1
  %1858 = load i8, ptr %1857, align 4, !range !15
  %1859 = icmp eq i8 %1858, 0
  br i1 %1859, label %1886, label %1860

1860:                                             ; preds = %1856, %1852
  %1861 = load i32, ptr %27, align 4
  store i32 %1861, ptr %1833, align 4
  %1862 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  store i32 %1854, ptr %1862, align 4
  %1863 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 4
  %1864 = load i32, ptr %1863, align 4
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1884, label %1866

1866:                                             ; preds = %1860
  %1867 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 2
  %1868 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 3
  br label %1869

1869:                                             ; preds = %1879, %1866
  %1870 = phi i32 [ 0, %1866 ], [ %1881, %1879 ]
  %1871 = phi i32 [ %1864, %1866 ], [ %1882, %1879 ]
  %1872 = and i32 %1871, 1
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1879, label %1874

1874:                                             ; preds = %1869
  %1875 = load ptr, ptr %2, align 4
  %1876 = load i32, ptr %1867, align 4
  %1877 = add i32 %1876, %1870
  %1878 = load i32, ptr %1862, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1875, i32 noundef %1877, i32 noundef %1878) #11
  br label %1879

1879:                                             ; preds = %1874, %1869
  %1880 = load i32, ptr %1868, align 4
  %1881 = add i32 %1880, %1870
  %1882 = lshr i32 %1871, 1
  %1883 = icmp ult i32 %1871, 2
  br i1 %1883, label %1884, label %1869

1884:                                             ; preds = %1879, %1860
  %1885 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 1
  store i8 0, ptr %1885, align 4
  br label %1886

1886:                                             ; preds = %1884, %1856, %1828, %1824
  %1887 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 64
  %1888 = getelementptr inbounds %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 4
  %1889 = load i64, ptr %1888, align 4
  %1890 = lshr i64 %1889, 56
  %1891 = trunc i64 %1890 to i32
  %1892 = and i32 %1891, 3
  %1893 = mul nuw nsw i32 %1892, 17
  %1894 = load i32, ptr %27, align 4
  store i32 %1894, ptr %1887, align 4
  %1895 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 64, i32 5
  store i32 %1893, ptr %1895, align 4
  %1896 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 64, i32 4
  %1897 = load i32, ptr %1896, align 4
  %1898 = icmp eq i32 %1897, 0
  br i1 %1898, label %1919, label %1899

1899:                                             ; preds = %1886
  %1900 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 64, i32 2
  %1901 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 64, i32 3
  br label %1902

1902:                                             ; preds = %1912, %1899
  %1903 = phi i32 [ 0, %1899 ], [ %1914, %1912 ]
  %1904 = phi i32 [ %1897, %1899 ], [ %1915, %1912 ]
  %1905 = and i32 %1904, 1
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %1912, label %1907

1907:                                             ; preds = %1902
  %1908 = load ptr, ptr %2, align 4
  %1909 = load i32, ptr %1900, align 4
  %1910 = add i32 %1909, %1903
  %1911 = load i32, ptr %1895, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1908, i32 noundef %1910, i32 noundef %1911) #11
  br label %1912

1912:                                             ; preds = %1907, %1902
  %1913 = load i32, ptr %1901, align 4
  %1914 = add i32 %1913, %1903
  %1915 = lshr i32 %1904, 1
  %1916 = icmp ult i32 %1904, 2
  br i1 %1916, label %1917, label %1902

1917:                                             ; preds = %1912
  %1918 = load i32, ptr %27, align 4
  br label %1919

1919:                                             ; preds = %1917, %1886
  %1920 = phi i32 [ %1918, %1917 ], [ %1894, %1886 ]
  %1921 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 40
  %1922 = getelementptr inbounds %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 11, i32 0, i32 2
  %1923 = load i8, ptr %1922, align 4
  %1924 = zext i8 %1923 to i32
  %1925 = mul nuw i32 %1924, 16843009
  store i32 %1920, ptr %1921, align 4
  %1926 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 40, i32 5
  store i32 %1925, ptr %1926, align 4
  %1927 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 40, i32 4
  %1928 = load i32, ptr %1927, align 4
  %1929 = icmp eq i32 %1928, 0
  br i1 %1929, label %1950, label %1930

1930:                                             ; preds = %1919
  %1931 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 40, i32 2
  %1932 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 40, i32 3
  br label %1933

1933:                                             ; preds = %1943, %1930
  %1934 = phi i32 [ 0, %1930 ], [ %1945, %1943 ]
  %1935 = phi i32 [ %1928, %1930 ], [ %1946, %1943 ]
  %1936 = and i32 %1935, 1
  %1937 = icmp eq i32 %1936, 0
  br i1 %1937, label %1943, label %1938

1938:                                             ; preds = %1933
  %1939 = load ptr, ptr %2, align 4
  %1940 = load i32, ptr %1931, align 4
  %1941 = add i32 %1940, %1934
  %1942 = load i32, ptr %1926, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1939, i32 noundef %1941, i32 noundef %1942) #11
  br label %1943

1943:                                             ; preds = %1938, %1933
  %1944 = load i32, ptr %1932, align 4
  %1945 = add i32 %1944, %1934
  %1946 = lshr i32 %1935, 1
  %1947 = icmp ult i32 %1935, 2
  br i1 %1947, label %1948, label %1933

1948:                                             ; preds = %1943
  %1949 = load i32, ptr %27, align 4
  br label %1950

1950:                                             ; preds = %1948, %1919
  %1951 = phi i32 [ %1949, %1948 ], [ %1920, %1919 ]
  %1952 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 65
  %1953 = load i8, ptr %1922, align 4
  %1954 = zext i8 %1953 to i32
  %1955 = mul nuw i32 %1954, 16843009
  store i32 %1951, ptr %1952, align 4
  %1956 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 65, i32 5
  store i32 %1955, ptr %1956, align 4
  %1957 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 65, i32 4
  %1958 = load i32, ptr %1957, align 4
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %1980, label %1960

1960:                                             ; preds = %1950
  %1961 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 65, i32 2
  %1962 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 65, i32 3
  br label %1963

1963:                                             ; preds = %1973, %1960
  %1964 = phi i32 [ 0, %1960 ], [ %1975, %1973 ]
  %1965 = phi i32 [ %1958, %1960 ], [ %1976, %1973 ]
  %1966 = and i32 %1965, 1
  %1967 = icmp eq i32 %1966, 0
  br i1 %1967, label %1973, label %1968

1968:                                             ; preds = %1963
  %1969 = load ptr, ptr %2, align 4
  %1970 = load i32, ptr %1961, align 4
  %1971 = add i32 %1970, %1964
  %1972 = load i32, ptr %1956, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1969, i32 noundef %1971, i32 noundef %1972) #11
  br label %1973

1973:                                             ; preds = %1968, %1963
  %1974 = load i32, ptr %1962, align 4
  %1975 = add i32 %1974, %1964
  %1976 = lshr i32 %1965, 1
  %1977 = icmp ult i32 %1965, 2
  br i1 %1977, label %1978, label %1963

1978:                                             ; preds = %1973
  %1979 = load i32, ptr %27, align 4
  br label %1980

1980:                                             ; preds = %1978, %1950
  %1981 = phi i32 [ %1979, %1978 ], [ %1951, %1950 ]
  %1982 = load i32, ptr %18, align 4
  %1983 = and i32 %1982, 8192
  %1984 = icmp eq i32 %1983, 0
  %1985 = select i1 %1984, i32 50331648, i32 0
  %1986 = shl i32 %1982, 1
  %1987 = and i32 %1986, 8192
  %1988 = or i32 %1985, %1987
  %1989 = load i32, ptr %685, align 4
  %1990 = lshr i32 %1989, 5
  %1991 = and i32 %1990, 16384
  %1992 = or i32 %1988, %1991
  %1993 = and i32 %1989, 262144
  %1994 = icmp eq i32 %1993, 0
  %1995 = select i1 %1994, i32 3, i32 335544320
  %1996 = or i32 %1992, %1995
  %1997 = xor i32 %1996, 24576
  %1998 = load i32, ptr %694, align 4
  %1999 = icmp eq i32 %1998, %1981
  br i1 %1999, label %2000, label %2003

2000:                                             ; preds = %1980
  %2001 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  %2002 = load i32, ptr %2001, align 4
  br label %2015

2003:                                             ; preds = %1980
  %2004 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2005 = load ptr, ptr %2004, align 4
  %2006 = getelementptr inbounds %struct.nvkm_fb, ptr %2005, i32 0, i32 1, i32 1
  %2007 = load ptr, ptr %2006, align 4
  %2008 = getelementptr inbounds %struct.nvkm_device, ptr %2007, i32 0, i32 11
  %2009 = load ptr, ptr %2008, align 4
  %2010 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 2
  %2011 = load i32, ptr %2010, align 4
  %2012 = getelementptr i8, ptr %2009, i32 %2011
  %2013 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2012) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2014 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  store i32 %2013, ptr %2014, align 4
  br label %2015

2015:                                             ; preds = %2003, %2000
  %2016 = phi i32 [ %2002, %2000 ], [ %2013, %2003 ]
  %2017 = and i32 %2016, -65537
  %2018 = or i32 %2017, %1997
  %2019 = icmp eq i32 %2016, %2018
  br i1 %2019, label %2020, label %2024

2020:                                             ; preds = %2015
  %2021 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 1
  %2022 = load i8, ptr %2021, align 4, !range !15
  %2023 = icmp eq i8 %2022, 0
  br i1 %2023, label %2050, label %2024

2024:                                             ; preds = %2020, %2015
  %2025 = load i32, ptr %27, align 4
  store i32 %2025, ptr %694, align 4
  %2026 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  store i32 %2018, ptr %2026, align 4
  %2027 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 4
  %2028 = load i32, ptr %2027, align 4
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2048, label %2030

2030:                                             ; preds = %2024
  %2031 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 2
  %2032 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 3
  br label %2033

2033:                                             ; preds = %2043, %2030
  %2034 = phi i32 [ 0, %2030 ], [ %2045, %2043 ]
  %2035 = phi i32 [ %2028, %2030 ], [ %2046, %2043 ]
  %2036 = and i32 %2035, 1
  %2037 = icmp eq i32 %2036, 0
  br i1 %2037, label %2043, label %2038

2038:                                             ; preds = %2033
  %2039 = load ptr, ptr %2, align 4
  %2040 = load i32, ptr %2031, align 4
  %2041 = add i32 %2040, %2034
  %2042 = load i32, ptr %2026, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2039, i32 noundef %2041, i32 noundef %2042) #11
  br label %2043

2043:                                             ; preds = %2038, %2033
  %2044 = load i32, ptr %2032, align 4
  %2045 = add i32 %2044, %2034
  %2046 = lshr i32 %2035, 1
  %2047 = icmp ult i32 %2035, 2
  br i1 %2047, label %2048, label %2033

2048:                                             ; preds = %2043, %2024
  %2049 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 1
  store i8 0, ptr %2049, align 4
  br label %2050

2050:                                             ; preds = %2048, %2020
  %2051 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %2051, i32 noundef 1000) #11
  %2052 = load i32, ptr %685, align 4
  %2053 = lshr i32 %2052, 2
  %2054 = and i32 %2053, 1048576
  %2055 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47
  %2056 = load i32, ptr %2055, align 4
  %2057 = load i32, ptr %27, align 4
  %2058 = icmp eq i32 %2056, %2057
  br i1 %2058, label %2059, label %2062

2059:                                             ; preds = %2050
  %2060 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 5
  %2061 = load i32, ptr %2060, align 4
  br label %2074

2062:                                             ; preds = %2050
  %2063 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2064 = load ptr, ptr %2063, align 4
  %2065 = getelementptr inbounds %struct.nvkm_fb, ptr %2064, i32 0, i32 1, i32 1
  %2066 = load ptr, ptr %2065, align 4
  %2067 = getelementptr inbounds %struct.nvkm_device, ptr %2066, i32 0, i32 11
  %2068 = load ptr, ptr %2067, align 4
  %2069 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 2
  %2070 = load i32, ptr %2069, align 4
  %2071 = getelementptr i8, ptr %2068, i32 %2070
  %2072 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2071) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2073 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 5
  store i32 %2072, ptr %2073, align 4
  br label %2074

2074:                                             ; preds = %2062, %2059
  %2075 = phi i32 [ %2061, %2059 ], [ %2072, %2062 ]
  %2076 = and i32 %2075, -1048577
  %2077 = or i32 %2076, %2054
  %2078 = icmp eq i32 %2075, %2077
  br i1 %2078, label %2079, label %2083

2079:                                             ; preds = %2074
  %2080 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 1
  %2081 = load i8, ptr %2080, align 4, !range !15
  %2082 = icmp eq i8 %2081, 0
  br i1 %2082, label %2109, label %2083

2083:                                             ; preds = %2079, %2074
  %2084 = load i32, ptr %27, align 4
  store i32 %2084, ptr %2055, align 4
  %2085 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 5
  store i32 %2077, ptr %2085, align 4
  %2086 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 4
  %2087 = load i32, ptr %2086, align 4
  %2088 = icmp eq i32 %2087, 0
  br i1 %2088, label %2107, label %2089

2089:                                             ; preds = %2083
  %2090 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 2
  %2091 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 3
  br label %2092

2092:                                             ; preds = %2102, %2089
  %2093 = phi i32 [ 0, %2089 ], [ %2104, %2102 ]
  %2094 = phi i32 [ %2087, %2089 ], [ %2105, %2102 ]
  %2095 = and i32 %2094, 1
  %2096 = icmp eq i32 %2095, 0
  br i1 %2096, label %2102, label %2097

2097:                                             ; preds = %2092
  %2098 = load ptr, ptr %2, align 4
  %2099 = load i32, ptr %2090, align 4
  %2100 = add i32 %2099, %2093
  %2101 = load i32, ptr %2085, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2098, i32 noundef %2100, i32 noundef %2101) #11
  br label %2102

2102:                                             ; preds = %2097, %2092
  %2103 = load i32, ptr %2091, align 4
  %2104 = add i32 %2103, %2093
  %2105 = lshr i32 %2094, 1
  %2106 = icmp ult i32 %2094, 2
  br i1 %2106, label %2107, label %2092

2107:                                             ; preds = %2102, %2083
  %2108 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 1
  store i8 0, ptr %2108, align 4
  br label %2109

2109:                                             ; preds = %2107, %2079
  %2110 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16
  %2111 = getelementptr inbounds %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14
  %2112 = getelementptr %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14, i32 10
  %2113 = load i32, ptr %2112, align 4
  %2114 = load i32, ptr %2110, align 4
  %2115 = load i32, ptr %27, align 4
  %2116 = icmp eq i32 %2114, %2115
  br i1 %2116, label %2117, label %2120

2117:                                             ; preds = %2109
  %2118 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 5
  %2119 = load i32, ptr %2118, align 4
  br label %2132

2120:                                             ; preds = %2109
  %2121 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2122 = load ptr, ptr %2121, align 4
  %2123 = getelementptr inbounds %struct.nvkm_fb, ptr %2122, i32 0, i32 1, i32 1
  %2124 = load ptr, ptr %2123, align 4
  %2125 = getelementptr inbounds %struct.nvkm_device, ptr %2124, i32 0, i32 11
  %2126 = load ptr, ptr %2125, align 4
  %2127 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 2
  %2128 = load i32, ptr %2127, align 4
  %2129 = getelementptr i8, ptr %2126, i32 %2128
  %2130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2129) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2131 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 5
  store i32 %2130, ptr %2131, align 4
  br label %2132

2132:                                             ; preds = %2120, %2117
  %2133 = phi i32 [ %2119, %2117 ], [ %2130, %2120 ]
  %2134 = icmp eq i32 %2133, %2113
  br i1 %2134, label %2135, label %2139

2135:                                             ; preds = %2132
  %2136 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 1
  %2137 = load i8, ptr %2136, align 4, !range !15
  %2138 = icmp eq i8 %2137, 0
  br i1 %2138, label %2165, label %2139

2139:                                             ; preds = %2135, %2132
  %2140 = load i32, ptr %27, align 4
  store i32 %2140, ptr %2110, align 4
  %2141 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 5
  store i32 %2113, ptr %2141, align 4
  %2142 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 4
  %2143 = load i32, ptr %2142, align 4
  %2144 = icmp eq i32 %2143, 0
  br i1 %2144, label %2163, label %2145

2145:                                             ; preds = %2139
  %2146 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 2
  %2147 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 3
  br label %2148

2148:                                             ; preds = %2158, %2145
  %2149 = phi i32 [ 0, %2145 ], [ %2160, %2158 ]
  %2150 = phi i32 [ %2143, %2145 ], [ %2161, %2158 ]
  %2151 = and i32 %2150, 1
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2158, label %2153

2153:                                             ; preds = %2148
  %2154 = load ptr, ptr %2, align 4
  %2155 = load i32, ptr %2146, align 4
  %2156 = add i32 %2155, %2149
  %2157 = load i32, ptr %2141, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2154, i32 noundef %2156, i32 noundef %2157) #11
  br label %2158

2158:                                             ; preds = %2153, %2148
  %2159 = load i32, ptr %2147, align 4
  %2160 = add i32 %2159, %2149
  %2161 = lshr i32 %2150, 1
  %2162 = icmp ult i32 %2150, 2
  br i1 %2162, label %2163, label %2148

2163:                                             ; preds = %2158, %2139
  %2164 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 1
  store i8 0, ptr %2164, align 4
  br label %2165

2165:                                             ; preds = %2163, %2135
  %2166 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17
  %2167 = load i32, ptr %2111, align 4
  %2168 = load i32, ptr %2166, align 4
  %2169 = load i32, ptr %27, align 4
  %2170 = icmp eq i32 %2168, %2169
  br i1 %2170, label %2171, label %2174

2171:                                             ; preds = %2165
  %2172 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 5
  %2173 = load i32, ptr %2172, align 4
  br label %2186

2174:                                             ; preds = %2165
  %2175 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2176 = load ptr, ptr %2175, align 4
  %2177 = getelementptr inbounds %struct.nvkm_fb, ptr %2176, i32 0, i32 1, i32 1
  %2178 = load ptr, ptr %2177, align 4
  %2179 = getelementptr inbounds %struct.nvkm_device, ptr %2178, i32 0, i32 11
  %2180 = load ptr, ptr %2179, align 4
  %2181 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 2
  %2182 = load i32, ptr %2181, align 4
  %2183 = getelementptr i8, ptr %2180, i32 %2182
  %2184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2183) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2185 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 5
  store i32 %2184, ptr %2185, align 4
  br label %2186

2186:                                             ; preds = %2174, %2171
  %2187 = phi i32 [ %2173, %2171 ], [ %2184, %2174 ]
  %2188 = icmp eq i32 %2187, %2167
  br i1 %2188, label %2189, label %2193

2189:                                             ; preds = %2186
  %2190 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 1
  %2191 = load i8, ptr %2190, align 4, !range !15
  %2192 = icmp eq i8 %2191, 0
  br i1 %2192, label %2219, label %2193

2193:                                             ; preds = %2189, %2186
  %2194 = load i32, ptr %27, align 4
  store i32 %2194, ptr %2166, align 4
  %2195 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 5
  store i32 %2167, ptr %2195, align 4
  %2196 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 4
  %2197 = load i32, ptr %2196, align 4
  %2198 = icmp eq i32 %2197, 0
  br i1 %2198, label %2217, label %2199

2199:                                             ; preds = %2193
  %2200 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 2
  %2201 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 3
  br label %2202

2202:                                             ; preds = %2212, %2199
  %2203 = phi i32 [ 0, %2199 ], [ %2214, %2212 ]
  %2204 = phi i32 [ %2197, %2199 ], [ %2215, %2212 ]
  %2205 = and i32 %2204, 1
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2212, label %2207

2207:                                             ; preds = %2202
  %2208 = load ptr, ptr %2, align 4
  %2209 = load i32, ptr %2200, align 4
  %2210 = add i32 %2209, %2203
  %2211 = load i32, ptr %2195, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2208, i32 noundef %2210, i32 noundef %2211) #11
  br label %2212

2212:                                             ; preds = %2207, %2202
  %2213 = load i32, ptr %2201, align 4
  %2214 = add i32 %2213, %2203
  %2215 = lshr i32 %2204, 1
  %2216 = icmp ult i32 %2204, 2
  br i1 %2216, label %2217, label %2202

2217:                                             ; preds = %2212, %2193
  %2218 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 1
  store i8 0, ptr %2218, align 4
  br label %2219

2219:                                             ; preds = %2217, %2189
  %2220 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18
  %2221 = getelementptr %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14, i32 1
  %2222 = load i32, ptr %2221, align 4
  %2223 = load i32, ptr %2220, align 4
  %2224 = load i32, ptr %27, align 4
  %2225 = icmp eq i32 %2223, %2224
  br i1 %2225, label %2226, label %2229

2226:                                             ; preds = %2219
  %2227 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 5
  %2228 = load i32, ptr %2227, align 4
  br label %2241

2229:                                             ; preds = %2219
  %2230 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2231 = load ptr, ptr %2230, align 4
  %2232 = getelementptr inbounds %struct.nvkm_fb, ptr %2231, i32 0, i32 1, i32 1
  %2233 = load ptr, ptr %2232, align 4
  %2234 = getelementptr inbounds %struct.nvkm_device, ptr %2233, i32 0, i32 11
  %2235 = load ptr, ptr %2234, align 4
  %2236 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 2
  %2237 = load i32, ptr %2236, align 4
  %2238 = getelementptr i8, ptr %2235, i32 %2237
  %2239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2238) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2240 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 5
  store i32 %2239, ptr %2240, align 4
  br label %2241

2241:                                             ; preds = %2229, %2226
  %2242 = phi i32 [ %2228, %2226 ], [ %2239, %2229 ]
  %2243 = icmp eq i32 %2242, %2222
  br i1 %2243, label %2244, label %2248

2244:                                             ; preds = %2241
  %2245 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 1
  %2246 = load i8, ptr %2245, align 4, !range !15
  %2247 = icmp eq i8 %2246, 0
  br i1 %2247, label %2274, label %2248

2248:                                             ; preds = %2244, %2241
  %2249 = load i32, ptr %27, align 4
  store i32 %2249, ptr %2220, align 4
  %2250 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 5
  store i32 %2222, ptr %2250, align 4
  %2251 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 4
  %2252 = load i32, ptr %2251, align 4
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2272, label %2254

2254:                                             ; preds = %2248
  %2255 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 2
  %2256 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 3
  br label %2257

2257:                                             ; preds = %2267, %2254
  %2258 = phi i32 [ 0, %2254 ], [ %2269, %2267 ]
  %2259 = phi i32 [ %2252, %2254 ], [ %2270, %2267 ]
  %2260 = and i32 %2259, 1
  %2261 = icmp eq i32 %2260, 0
  br i1 %2261, label %2267, label %2262

2262:                                             ; preds = %2257
  %2263 = load ptr, ptr %2, align 4
  %2264 = load i32, ptr %2255, align 4
  %2265 = add i32 %2264, %2258
  %2266 = load i32, ptr %2250, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2263, i32 noundef %2265, i32 noundef %2266) #11
  br label %2267

2267:                                             ; preds = %2262, %2257
  %2268 = load i32, ptr %2256, align 4
  %2269 = add i32 %2268, %2258
  %2270 = lshr i32 %2259, 1
  %2271 = icmp ult i32 %2259, 2
  br i1 %2271, label %2272, label %2257

2272:                                             ; preds = %2267, %2248
  %2273 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 1
  store i8 0, ptr %2273, align 4
  br label %2274

2274:                                             ; preds = %2272, %2244
  %2275 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19
  %2276 = getelementptr %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14, i32 2
  %2277 = load i32, ptr %2276, align 4
  %2278 = load i32, ptr %2275, align 4
  %2279 = load i32, ptr %27, align 4
  %2280 = icmp eq i32 %2278, %2279
  br i1 %2280, label %2281, label %2284

2281:                                             ; preds = %2274
  %2282 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 5
  %2283 = load i32, ptr %2282, align 4
  br label %2296

2284:                                             ; preds = %2274
  %2285 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2286 = load ptr, ptr %2285, align 4
  %2287 = getelementptr inbounds %struct.nvkm_fb, ptr %2286, i32 0, i32 1, i32 1
  %2288 = load ptr, ptr %2287, align 4
  %2289 = getelementptr inbounds %struct.nvkm_device, ptr %2288, i32 0, i32 11
  %2290 = load ptr, ptr %2289, align 4
  %2291 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 2
  %2292 = load i32, ptr %2291, align 4
  %2293 = getelementptr i8, ptr %2290, i32 %2292
  %2294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2293) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2295 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 5
  store i32 %2294, ptr %2295, align 4
  br label %2296

2296:                                             ; preds = %2284, %2281
  %2297 = phi i32 [ %2283, %2281 ], [ %2294, %2284 ]
  %2298 = icmp eq i32 %2297, %2277
  br i1 %2298, label %2299, label %2303

2299:                                             ; preds = %2296
  %2300 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 1
  %2301 = load i8, ptr %2300, align 4, !range !15
  %2302 = icmp eq i8 %2301, 0
  br i1 %2302, label %2329, label %2303

2303:                                             ; preds = %2299, %2296
  %2304 = load i32, ptr %27, align 4
  store i32 %2304, ptr %2275, align 4
  %2305 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 5
  store i32 %2277, ptr %2305, align 4
  %2306 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 4
  %2307 = load i32, ptr %2306, align 4
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2327, label %2309

2309:                                             ; preds = %2303
  %2310 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 2
  %2311 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 3
  br label %2312

2312:                                             ; preds = %2322, %2309
  %2313 = phi i32 [ 0, %2309 ], [ %2324, %2322 ]
  %2314 = phi i32 [ %2307, %2309 ], [ %2325, %2322 ]
  %2315 = and i32 %2314, 1
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2322, label %2317

2317:                                             ; preds = %2312
  %2318 = load ptr, ptr %2, align 4
  %2319 = load i32, ptr %2310, align 4
  %2320 = add i32 %2319, %2313
  %2321 = load i32, ptr %2305, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2318, i32 noundef %2320, i32 noundef %2321) #11
  br label %2322

2322:                                             ; preds = %2317, %2312
  %2323 = load i32, ptr %2311, align 4
  %2324 = add i32 %2323, %2313
  %2325 = lshr i32 %2314, 1
  %2326 = icmp ult i32 %2314, 2
  br i1 %2326, label %2327, label %2312

2327:                                             ; preds = %2322, %2303
  %2328 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 1
  store i8 0, ptr %2328, align 4
  br label %2329

2329:                                             ; preds = %2327, %2299
  %2330 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20
  %2331 = getelementptr %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14, i32 3
  %2332 = load i32, ptr %2331, align 4
  %2333 = load i32, ptr %2330, align 4
  %2334 = load i32, ptr %27, align 4
  %2335 = icmp eq i32 %2333, %2334
  br i1 %2335, label %2336, label %2339

2336:                                             ; preds = %2329
  %2337 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 5
  %2338 = load i32, ptr %2337, align 4
  br label %2351

2339:                                             ; preds = %2329
  %2340 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2341 = load ptr, ptr %2340, align 4
  %2342 = getelementptr inbounds %struct.nvkm_fb, ptr %2341, i32 0, i32 1, i32 1
  %2343 = load ptr, ptr %2342, align 4
  %2344 = getelementptr inbounds %struct.nvkm_device, ptr %2343, i32 0, i32 11
  %2345 = load ptr, ptr %2344, align 4
  %2346 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 2
  %2347 = load i32, ptr %2346, align 4
  %2348 = getelementptr i8, ptr %2345, i32 %2347
  %2349 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2348) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2350 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 5
  store i32 %2349, ptr %2350, align 4
  br label %2351

2351:                                             ; preds = %2339, %2336
  %2352 = phi i32 [ %2338, %2336 ], [ %2349, %2339 ]
  %2353 = icmp eq i32 %2352, %2332
  br i1 %2353, label %2354, label %2358

2354:                                             ; preds = %2351
  %2355 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 1
  %2356 = load i8, ptr %2355, align 4, !range !15
  %2357 = icmp eq i8 %2356, 0
  br i1 %2357, label %2384, label %2358

2358:                                             ; preds = %2354, %2351
  %2359 = load i32, ptr %27, align 4
  store i32 %2359, ptr %2330, align 4
  %2360 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 5
  store i32 %2332, ptr %2360, align 4
  %2361 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 4
  %2362 = load i32, ptr %2361, align 4
  %2363 = icmp eq i32 %2362, 0
  br i1 %2363, label %2382, label %2364

2364:                                             ; preds = %2358
  %2365 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 2
  %2366 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 3
  br label %2367

2367:                                             ; preds = %2377, %2364
  %2368 = phi i32 [ 0, %2364 ], [ %2379, %2377 ]
  %2369 = phi i32 [ %2362, %2364 ], [ %2380, %2377 ]
  %2370 = and i32 %2369, 1
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2377, label %2372

2372:                                             ; preds = %2367
  %2373 = load ptr, ptr %2, align 4
  %2374 = load i32, ptr %2365, align 4
  %2375 = add i32 %2374, %2368
  %2376 = load i32, ptr %2360, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2373, i32 noundef %2375, i32 noundef %2376) #11
  br label %2377

2377:                                             ; preds = %2372, %2367
  %2378 = load i32, ptr %2366, align 4
  %2379 = add i32 %2378, %2368
  %2380 = lshr i32 %2369, 1
  %2381 = icmp ult i32 %2369, 2
  br i1 %2381, label %2382, label %2367

2382:                                             ; preds = %2377, %2358
  %2383 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 1
  store i8 0, ptr %2383, align 4
  br label %2384

2384:                                             ; preds = %2382, %2354
  %2385 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21
  %2386 = getelementptr %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14, i32 4
  %2387 = load i32, ptr %2386, align 4
  %2388 = load i32, ptr %2385, align 4
  %2389 = load i32, ptr %27, align 4
  %2390 = icmp eq i32 %2388, %2389
  br i1 %2390, label %2391, label %2394

2391:                                             ; preds = %2384
  %2392 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 5
  %2393 = load i32, ptr %2392, align 4
  br label %2406

2394:                                             ; preds = %2384
  %2395 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2396 = load ptr, ptr %2395, align 4
  %2397 = getelementptr inbounds %struct.nvkm_fb, ptr %2396, i32 0, i32 1, i32 1
  %2398 = load ptr, ptr %2397, align 4
  %2399 = getelementptr inbounds %struct.nvkm_device, ptr %2398, i32 0, i32 11
  %2400 = load ptr, ptr %2399, align 4
  %2401 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 2
  %2402 = load i32, ptr %2401, align 4
  %2403 = getelementptr i8, ptr %2400, i32 %2402
  %2404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2403) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2405 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 5
  store i32 %2404, ptr %2405, align 4
  br label %2406

2406:                                             ; preds = %2394, %2391
  %2407 = phi i32 [ %2393, %2391 ], [ %2404, %2394 ]
  %2408 = icmp eq i32 %2407, %2387
  br i1 %2408, label %2409, label %2413

2409:                                             ; preds = %2406
  %2410 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 1
  %2411 = load i8, ptr %2410, align 4, !range !15
  %2412 = icmp eq i8 %2411, 0
  br i1 %2412, label %2439, label %2413

2413:                                             ; preds = %2409, %2406
  %2414 = load i32, ptr %27, align 4
  store i32 %2414, ptr %2385, align 4
  %2415 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 5
  store i32 %2387, ptr %2415, align 4
  %2416 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 4
  %2417 = load i32, ptr %2416, align 4
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2437, label %2419

2419:                                             ; preds = %2413
  %2420 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 2
  %2421 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 3
  br label %2422

2422:                                             ; preds = %2432, %2419
  %2423 = phi i32 [ 0, %2419 ], [ %2434, %2432 ]
  %2424 = phi i32 [ %2417, %2419 ], [ %2435, %2432 ]
  %2425 = and i32 %2424, 1
  %2426 = icmp eq i32 %2425, 0
  br i1 %2426, label %2432, label %2427

2427:                                             ; preds = %2422
  %2428 = load ptr, ptr %2, align 4
  %2429 = load i32, ptr %2420, align 4
  %2430 = add i32 %2429, %2423
  %2431 = load i32, ptr %2415, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2428, i32 noundef %2430, i32 noundef %2431) #11
  br label %2432

2432:                                             ; preds = %2427, %2422
  %2433 = load i32, ptr %2421, align 4
  %2434 = add i32 %2433, %2423
  %2435 = lshr i32 %2424, 1
  %2436 = icmp ult i32 %2424, 2
  br i1 %2436, label %2437, label %2422

2437:                                             ; preds = %2432, %2413
  %2438 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 1
  store i8 0, ptr %2438, align 4
  br label %2439

2439:                                             ; preds = %2437, %2409
  %2440 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22
  %2441 = getelementptr %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14, i32 5
  %2442 = load i32, ptr %2441, align 4
  %2443 = load i32, ptr %2440, align 4
  %2444 = load i32, ptr %27, align 4
  %2445 = icmp eq i32 %2443, %2444
  br i1 %2445, label %2446, label %2449

2446:                                             ; preds = %2439
  %2447 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 5
  %2448 = load i32, ptr %2447, align 4
  br label %2461

2449:                                             ; preds = %2439
  %2450 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2451 = load ptr, ptr %2450, align 4
  %2452 = getelementptr inbounds %struct.nvkm_fb, ptr %2451, i32 0, i32 1, i32 1
  %2453 = load ptr, ptr %2452, align 4
  %2454 = getelementptr inbounds %struct.nvkm_device, ptr %2453, i32 0, i32 11
  %2455 = load ptr, ptr %2454, align 4
  %2456 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 2
  %2457 = load i32, ptr %2456, align 4
  %2458 = getelementptr i8, ptr %2455, i32 %2457
  %2459 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2458) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2460 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 5
  store i32 %2459, ptr %2460, align 4
  br label %2461

2461:                                             ; preds = %2449, %2446
  %2462 = phi i32 [ %2448, %2446 ], [ %2459, %2449 ]
  %2463 = icmp eq i32 %2462, %2442
  br i1 %2463, label %2464, label %2468

2464:                                             ; preds = %2461
  %2465 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 1
  %2466 = load i8, ptr %2465, align 4, !range !15
  %2467 = icmp eq i8 %2466, 0
  br i1 %2467, label %2494, label %2468

2468:                                             ; preds = %2464, %2461
  %2469 = load i32, ptr %27, align 4
  store i32 %2469, ptr %2440, align 4
  %2470 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 5
  store i32 %2442, ptr %2470, align 4
  %2471 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 4
  %2472 = load i32, ptr %2471, align 4
  %2473 = icmp eq i32 %2472, 0
  br i1 %2473, label %2492, label %2474

2474:                                             ; preds = %2468
  %2475 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 2
  %2476 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 3
  br label %2477

2477:                                             ; preds = %2487, %2474
  %2478 = phi i32 [ 0, %2474 ], [ %2489, %2487 ]
  %2479 = phi i32 [ %2472, %2474 ], [ %2490, %2487 ]
  %2480 = and i32 %2479, 1
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2487, label %2482

2482:                                             ; preds = %2477
  %2483 = load ptr, ptr %2, align 4
  %2484 = load i32, ptr %2475, align 4
  %2485 = add i32 %2484, %2478
  %2486 = load i32, ptr %2470, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2483, i32 noundef %2485, i32 noundef %2486) #11
  br label %2487

2487:                                             ; preds = %2482, %2477
  %2488 = load i32, ptr %2476, align 4
  %2489 = add i32 %2488, %2478
  %2490 = lshr i32 %2479, 1
  %2491 = icmp ult i32 %2479, 2
  br i1 %2491, label %2492, label %2477

2492:                                             ; preds = %2487, %2468
  %2493 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 1
  store i8 0, ptr %2493, align 4
  br label %2494

2494:                                             ; preds = %2492, %2464
  %2495 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23
  %2496 = getelementptr %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14, i32 6
  %2497 = load i32, ptr %2496, align 4
  %2498 = load i32, ptr %2495, align 4
  %2499 = load i32, ptr %27, align 4
  %2500 = icmp eq i32 %2498, %2499
  br i1 %2500, label %2501, label %2504

2501:                                             ; preds = %2494
  %2502 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 5
  %2503 = load i32, ptr %2502, align 4
  br label %2516

2504:                                             ; preds = %2494
  %2505 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2506 = load ptr, ptr %2505, align 4
  %2507 = getelementptr inbounds %struct.nvkm_fb, ptr %2506, i32 0, i32 1, i32 1
  %2508 = load ptr, ptr %2507, align 4
  %2509 = getelementptr inbounds %struct.nvkm_device, ptr %2508, i32 0, i32 11
  %2510 = load ptr, ptr %2509, align 4
  %2511 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 2
  %2512 = load i32, ptr %2511, align 4
  %2513 = getelementptr i8, ptr %2510, i32 %2512
  %2514 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2513) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2515 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 5
  store i32 %2514, ptr %2515, align 4
  br label %2516

2516:                                             ; preds = %2504, %2501
  %2517 = phi i32 [ %2503, %2501 ], [ %2514, %2504 ]
  %2518 = icmp eq i32 %2517, %2497
  br i1 %2518, label %2519, label %2523

2519:                                             ; preds = %2516
  %2520 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 1
  %2521 = load i8, ptr %2520, align 4, !range !15
  %2522 = icmp eq i8 %2521, 0
  br i1 %2522, label %2549, label %2523

2523:                                             ; preds = %2519, %2516
  %2524 = load i32, ptr %27, align 4
  store i32 %2524, ptr %2495, align 4
  %2525 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 5
  store i32 %2497, ptr %2525, align 4
  %2526 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 4
  %2527 = load i32, ptr %2526, align 4
  %2528 = icmp eq i32 %2527, 0
  br i1 %2528, label %2547, label %2529

2529:                                             ; preds = %2523
  %2530 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 2
  %2531 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 3
  br label %2532

2532:                                             ; preds = %2542, %2529
  %2533 = phi i32 [ 0, %2529 ], [ %2544, %2542 ]
  %2534 = phi i32 [ %2527, %2529 ], [ %2545, %2542 ]
  %2535 = and i32 %2534, 1
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %2542, label %2537

2537:                                             ; preds = %2532
  %2538 = load ptr, ptr %2, align 4
  %2539 = load i32, ptr %2530, align 4
  %2540 = add i32 %2539, %2533
  %2541 = load i32, ptr %2525, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2538, i32 noundef %2540, i32 noundef %2541) #11
  br label %2542

2542:                                             ; preds = %2537, %2532
  %2543 = load i32, ptr %2531, align 4
  %2544 = add i32 %2543, %2533
  %2545 = lshr i32 %2534, 1
  %2546 = icmp ult i32 %2534, 2
  br i1 %2546, label %2547, label %2532

2547:                                             ; preds = %2542, %2523
  %2548 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 1
  store i8 0, ptr %2548, align 4
  br label %2549

2549:                                             ; preds = %2547, %2519
  %2550 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24
  %2551 = getelementptr %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14, i32 7
  %2552 = load i32, ptr %2551, align 4
  %2553 = load i32, ptr %2550, align 4
  %2554 = load i32, ptr %27, align 4
  %2555 = icmp eq i32 %2553, %2554
  br i1 %2555, label %2556, label %2559

2556:                                             ; preds = %2549
  %2557 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 5
  %2558 = load i32, ptr %2557, align 4
  br label %2571

2559:                                             ; preds = %2549
  %2560 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2561 = load ptr, ptr %2560, align 4
  %2562 = getelementptr inbounds %struct.nvkm_fb, ptr %2561, i32 0, i32 1, i32 1
  %2563 = load ptr, ptr %2562, align 4
  %2564 = getelementptr inbounds %struct.nvkm_device, ptr %2563, i32 0, i32 11
  %2565 = load ptr, ptr %2564, align 4
  %2566 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 2
  %2567 = load i32, ptr %2566, align 4
  %2568 = getelementptr i8, ptr %2565, i32 %2567
  %2569 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2568) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2570 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 5
  store i32 %2569, ptr %2570, align 4
  br label %2571

2571:                                             ; preds = %2559, %2556
  %2572 = phi i32 [ %2558, %2556 ], [ %2569, %2559 ]
  %2573 = icmp eq i32 %2572, %2552
  br i1 %2573, label %2574, label %2578

2574:                                             ; preds = %2571
  %2575 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 1
  %2576 = load i8, ptr %2575, align 4, !range !15
  %2577 = icmp eq i8 %2576, 0
  br i1 %2577, label %2604, label %2578

2578:                                             ; preds = %2574, %2571
  %2579 = load i32, ptr %27, align 4
  store i32 %2579, ptr %2550, align 4
  %2580 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 5
  store i32 %2552, ptr %2580, align 4
  %2581 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 4
  %2582 = load i32, ptr %2581, align 4
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %2602, label %2584

2584:                                             ; preds = %2578
  %2585 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 2
  %2586 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 3
  br label %2587

2587:                                             ; preds = %2597, %2584
  %2588 = phi i32 [ 0, %2584 ], [ %2599, %2597 ]
  %2589 = phi i32 [ %2582, %2584 ], [ %2600, %2597 ]
  %2590 = and i32 %2589, 1
  %2591 = icmp eq i32 %2590, 0
  br i1 %2591, label %2597, label %2592

2592:                                             ; preds = %2587
  %2593 = load ptr, ptr %2, align 4
  %2594 = load i32, ptr %2585, align 4
  %2595 = add i32 %2594, %2588
  %2596 = load i32, ptr %2580, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2593, i32 noundef %2595, i32 noundef %2596) #11
  br label %2597

2597:                                             ; preds = %2592, %2587
  %2598 = load i32, ptr %2586, align 4
  %2599 = add i32 %2598, %2588
  %2600 = lshr i32 %2589, 1
  %2601 = icmp ult i32 %2589, 2
  br i1 %2601, label %2602, label %2587

2602:                                             ; preds = %2597, %2578
  %2603 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 1
  store i8 0, ptr %2603, align 4
  br label %2604

2604:                                             ; preds = %2602, %2574
  %2605 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25
  %2606 = getelementptr %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14, i32 8
  %2607 = load i32, ptr %2606, align 4
  %2608 = load i32, ptr %2605, align 4
  %2609 = load i32, ptr %27, align 4
  %2610 = icmp eq i32 %2608, %2609
  br i1 %2610, label %2611, label %2614

2611:                                             ; preds = %2604
  %2612 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 5
  %2613 = load i32, ptr %2612, align 4
  br label %2626

2614:                                             ; preds = %2604
  %2615 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2616 = load ptr, ptr %2615, align 4
  %2617 = getelementptr inbounds %struct.nvkm_fb, ptr %2616, i32 0, i32 1, i32 1
  %2618 = load ptr, ptr %2617, align 4
  %2619 = getelementptr inbounds %struct.nvkm_device, ptr %2618, i32 0, i32 11
  %2620 = load ptr, ptr %2619, align 4
  %2621 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 2
  %2622 = load i32, ptr %2621, align 4
  %2623 = getelementptr i8, ptr %2620, i32 %2622
  %2624 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2623) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2625 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 5
  store i32 %2624, ptr %2625, align 4
  br label %2626

2626:                                             ; preds = %2614, %2611
  %2627 = phi i32 [ %2613, %2611 ], [ %2624, %2614 ]
  %2628 = icmp eq i32 %2627, %2607
  br i1 %2628, label %2629, label %2633

2629:                                             ; preds = %2626
  %2630 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 1
  %2631 = load i8, ptr %2630, align 4, !range !15
  %2632 = icmp eq i8 %2631, 0
  br i1 %2632, label %2659, label %2633

2633:                                             ; preds = %2629, %2626
  %2634 = load i32, ptr %27, align 4
  store i32 %2634, ptr %2605, align 4
  %2635 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 5
  store i32 %2607, ptr %2635, align 4
  %2636 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 4
  %2637 = load i32, ptr %2636, align 4
  %2638 = icmp eq i32 %2637, 0
  br i1 %2638, label %2657, label %2639

2639:                                             ; preds = %2633
  %2640 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 2
  %2641 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 3
  br label %2642

2642:                                             ; preds = %2652, %2639
  %2643 = phi i32 [ 0, %2639 ], [ %2654, %2652 ]
  %2644 = phi i32 [ %2637, %2639 ], [ %2655, %2652 ]
  %2645 = and i32 %2644, 1
  %2646 = icmp eq i32 %2645, 0
  br i1 %2646, label %2652, label %2647

2647:                                             ; preds = %2642
  %2648 = load ptr, ptr %2, align 4
  %2649 = load i32, ptr %2640, align 4
  %2650 = add i32 %2649, %2643
  %2651 = load i32, ptr %2635, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2648, i32 noundef %2650, i32 noundef %2651) #11
  br label %2652

2652:                                             ; preds = %2647, %2642
  %2653 = load i32, ptr %2641, align 4
  %2654 = add i32 %2653, %2643
  %2655 = lshr i32 %2644, 1
  %2656 = icmp ult i32 %2644, 2
  br i1 %2656, label %2657, label %2642

2657:                                             ; preds = %2652, %2633
  %2658 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 1
  store i8 0, ptr %2658, align 4
  br label %2659

2659:                                             ; preds = %2657, %2629
  %2660 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26
  %2661 = getelementptr %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 14, i32 9
  %2662 = load i32, ptr %2661, align 4
  %2663 = load i32, ptr %2660, align 4
  %2664 = load i32, ptr %27, align 4
  %2665 = icmp eq i32 %2663, %2664
  br i1 %2665, label %2666, label %2669

2666:                                             ; preds = %2659
  %2667 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 5
  %2668 = load i32, ptr %2667, align 4
  br label %2681

2669:                                             ; preds = %2659
  %2670 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2671 = load ptr, ptr %2670, align 4
  %2672 = getelementptr inbounds %struct.nvkm_fb, ptr %2671, i32 0, i32 1, i32 1
  %2673 = load ptr, ptr %2672, align 4
  %2674 = getelementptr inbounds %struct.nvkm_device, ptr %2673, i32 0, i32 11
  %2675 = load ptr, ptr %2674, align 4
  %2676 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 2
  %2677 = load i32, ptr %2676, align 4
  %2678 = getelementptr i8, ptr %2675, i32 %2677
  %2679 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2678) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2680 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 5
  store i32 %2679, ptr %2680, align 4
  br label %2681

2681:                                             ; preds = %2669, %2666
  %2682 = phi i32 [ %2668, %2666 ], [ %2679, %2669 ]
  %2683 = icmp eq i32 %2682, %2662
  br i1 %2683, label %2684, label %2688

2684:                                             ; preds = %2681
  %2685 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 1
  %2686 = load i8, ptr %2685, align 4, !range !15
  %2687 = icmp eq i8 %2686, 0
  br i1 %2687, label %2714, label %2688

2688:                                             ; preds = %2684, %2681
  %2689 = load i32, ptr %27, align 4
  store i32 %2689, ptr %2660, align 4
  %2690 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 5
  store i32 %2662, ptr %2690, align 4
  %2691 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 4
  %2692 = load i32, ptr %2691, align 4
  %2693 = icmp eq i32 %2692, 0
  br i1 %2693, label %2712, label %2694

2694:                                             ; preds = %2688
  %2695 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 2
  %2696 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 3
  br label %2697

2697:                                             ; preds = %2707, %2694
  %2698 = phi i32 [ 0, %2694 ], [ %2709, %2707 ]
  %2699 = phi i32 [ %2692, %2694 ], [ %2710, %2707 ]
  %2700 = and i32 %2699, 1
  %2701 = icmp eq i32 %2700, 0
  br i1 %2701, label %2707, label %2702

2702:                                             ; preds = %2697
  %2703 = load ptr, ptr %2, align 4
  %2704 = load i32, ptr %2695, align 4
  %2705 = add i32 %2704, %2698
  %2706 = load i32, ptr %2690, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2703, i32 noundef %2705, i32 noundef %2706) #11
  br label %2707

2707:                                             ; preds = %2702, %2697
  %2708 = load i32, ptr %2696, align 4
  %2709 = add i32 %2708, %2698
  %2710 = lshr i32 %2699, 1
  %2711 = icmp ult i32 %2699, 2
  br i1 %2711, label %2712, label %2697

2712:                                             ; preds = %2707, %2688
  %2713 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 1
  store i8 0, ptr %2713, align 4
  br label %2714

2714:                                             ; preds = %2712, %2684
  %2715 = load i32, ptr %18, align 4
  %2716 = and i32 %2715, 4
  %2717 = icmp eq i32 %2716, 0
  %2718 = select i1 %2717, i32 538968064, i32 0
  %2719 = load i32, ptr %685, align 4
  %2720 = and i32 %2719, 2097152
  %2721 = icmp eq i32 %2720, 0
  %2722 = or i32 %2718, 310378496
  %2723 = select i1 %2721, i32 %2722, i32 %2718
  %2724 = and i32 %2715, 62914560
  %2725 = icmp eq i32 %2724, 0
  br i1 %2725, label %2736, label %2726

2726:                                             ; preds = %2714
  %2727 = load i64, ptr %1888, align 4
  %2728 = and i64 %2727, 6
  %2729 = icmp eq i64 %2728, 0
  %2730 = select i1 %2721, i32 1005584420, i32 1005584388
  %2731 = lshr exact i32 %2720, 16
  %2732 = select i1 %2729, i32 871366656, i32 %2730
  %2733 = select i1 %2729, i32 0, i32 %2731
  %2734 = or i32 %2723, %2733
  %2735 = or i32 %2734, 67108864
  br label %2738

2736:                                             ; preds = %2714
  %2737 = or i32 %2723, 134217732
  br label %2738

2738:                                             ; preds = %2736, %2726
  %2739 = phi i32 [ %2732, %2726 ], [ 2012217376, %2736 ]
  %2740 = phi i32 [ %2735, %2726 ], [ %2737, %2736 ]
  %2741 = load i32, ptr %25, align 4
  %2742 = load i32, ptr %27, align 4
  %2743 = icmp eq i32 %2741, %2742
  br i1 %2743, label %2744, label %2747

2744:                                             ; preds = %2738
  %2745 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  %2746 = load i32, ptr %2745, align 4
  br label %2759

2747:                                             ; preds = %2738
  %2748 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2749 = load ptr, ptr %2748, align 4
  %2750 = getelementptr inbounds %struct.nvkm_fb, ptr %2749, i32 0, i32 1, i32 1
  %2751 = load ptr, ptr %2750, align 4
  %2752 = getelementptr inbounds %struct.nvkm_device, ptr %2751, i32 0, i32 11
  %2753 = load ptr, ptr %2752, align 4
  %2754 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %2755 = load i32, ptr %2754, align 4
  %2756 = getelementptr i8, ptr %2753, i32 %2755
  %2757 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2756) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2758 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %2757, ptr %2758, align 4
  br label %2759

2759:                                             ; preds = %2747, %2744
  %2760 = phi i32 [ %2746, %2744 ], [ %2757, %2747 ]
  %2761 = xor i32 %2739, -1
  %2762 = and i32 %2760, %2761
  %2763 = or i32 %2762, %2740
  %2764 = icmp eq i32 %2760, %2763
  br i1 %2764, label %2765, label %2769

2765:                                             ; preds = %2759
  %2766 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  %2767 = load i8, ptr %2766, align 4, !range !15
  %2768 = icmp eq i8 %2767, 0
  br i1 %2768, label %2795, label %2769

2769:                                             ; preds = %2765, %2759
  %2770 = load i32, ptr %27, align 4
  store i32 %2770, ptr %25, align 4
  %2771 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %2763, ptr %2771, align 4
  %2772 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 4
  %2773 = load i32, ptr %2772, align 4
  %2774 = icmp eq i32 %2773, 0
  br i1 %2774, label %2793, label %2775

2775:                                             ; preds = %2769
  %2776 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %2777 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 3
  br label %2778

2778:                                             ; preds = %2788, %2775
  %2779 = phi i32 [ 0, %2775 ], [ %2790, %2788 ]
  %2780 = phi i32 [ %2773, %2775 ], [ %2791, %2788 ]
  %2781 = and i32 %2780, 1
  %2782 = icmp eq i32 %2781, 0
  br i1 %2782, label %2788, label %2783

2783:                                             ; preds = %2778
  %2784 = load ptr, ptr %2, align 4
  %2785 = load i32, ptr %2776, align 4
  %2786 = add i32 %2785, %2779
  %2787 = load i32, ptr %2771, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2784, i32 noundef %2786, i32 noundef %2787) #11
  br label %2788

2788:                                             ; preds = %2783, %2778
  %2789 = load i32, ptr %2777, align 4
  %2790 = add i32 %2789, %2779
  %2791 = lshr i32 %2780, 1
  %2792 = icmp ult i32 %2780, 2
  br i1 %2792, label %2793, label %2778

2793:                                             ; preds = %2788, %2769
  %2794 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  store i8 0, ptr %2794, align 4
  br label %2795

2795:                                             ; preds = %2793, %2765
  %2796 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 37
  %2797 = load i32, ptr %18, align 4
  %2798 = lshr i32 %2797, 14
  %2799 = and i32 %2798, 15
  %2800 = mul nuw i32 %2799, 286331153
  %2801 = load i32, ptr %27, align 4
  store i32 %2801, ptr %2796, align 4
  %2802 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 37, i32 5
  store i32 %2800, ptr %2802, align 4
  %2803 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 37, i32 4
  %2804 = load i32, ptr %2803, align 4
  %2805 = icmp eq i32 %2804, 0
  br i1 %2805, label %2826, label %2806

2806:                                             ; preds = %2795
  %2807 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 37, i32 2
  %2808 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 37, i32 3
  br label %2809

2809:                                             ; preds = %2819, %2806
  %2810 = phi i32 [ 0, %2806 ], [ %2821, %2819 ]
  %2811 = phi i32 [ %2804, %2806 ], [ %2822, %2819 ]
  %2812 = and i32 %2811, 1
  %2813 = icmp eq i32 %2812, 0
  br i1 %2813, label %2819, label %2814

2814:                                             ; preds = %2809
  %2815 = load ptr, ptr %2, align 4
  %2816 = load i32, ptr %2807, align 4
  %2817 = add i32 %2816, %2810
  %2818 = load i32, ptr %2802, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2815, i32 noundef %2817, i32 noundef %2818) #11
  br label %2819

2819:                                             ; preds = %2814, %2809
  %2820 = load i32, ptr %2808, align 4
  %2821 = add i32 %2820, %2810
  %2822 = lshr i32 %2811, 1
  %2823 = icmp ult i32 %2811, 2
  br i1 %2823, label %2824, label %2809

2824:                                             ; preds = %2819
  %2825 = load i32, ptr %27, align 4
  br label %2826

2826:                                             ; preds = %2824, %2795
  %2827 = phi i32 [ %2825, %2824 ], [ %2801, %2795 ]
  %2828 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27
  %2829 = getelementptr inbounds %struct.nvkm_ram_data, ptr %17, i32 0, i32 1, i32 15
  %2830 = load i64, ptr %2829, align 4
  %2831 = trunc i64 %2830 to i32
  %2832 = lshr i32 %2831, 4
  %2833 = and i32 %2832, 1008
  %2834 = load i32, ptr %2828, align 4
  %2835 = icmp eq i32 %2834, %2827
  br i1 %2835, label %2836, label %2839

2836:                                             ; preds = %2826
  %2837 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 5
  %2838 = load i32, ptr %2837, align 4
  br label %2851

2839:                                             ; preds = %2826
  %2840 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2841 = load ptr, ptr %2840, align 4
  %2842 = getelementptr inbounds %struct.nvkm_fb, ptr %2841, i32 0, i32 1, i32 1
  %2843 = load ptr, ptr %2842, align 4
  %2844 = getelementptr inbounds %struct.nvkm_device, ptr %2843, i32 0, i32 11
  %2845 = load ptr, ptr %2844, align 4
  %2846 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 2
  %2847 = load i32, ptr %2846, align 4
  %2848 = getelementptr i8, ptr %2845, i32 %2847
  %2849 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2848) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2850 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 5
  store i32 %2849, ptr %2850, align 4
  br label %2851

2851:                                             ; preds = %2839, %2836
  %2852 = phi i32 [ %2838, %2836 ], [ %2849, %2839 ]
  %2853 = and i32 %2852, -1009
  %2854 = or i32 %2853, %2833
  %2855 = icmp eq i32 %2852, %2854
  br i1 %2855, label %2856, label %2860

2856:                                             ; preds = %2851
  %2857 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 1
  %2858 = load i8, ptr %2857, align 4, !range !15
  %2859 = icmp eq i8 %2858, 0
  br i1 %2859, label %2886, label %2860

2860:                                             ; preds = %2856, %2851
  %2861 = load i32, ptr %27, align 4
  store i32 %2861, ptr %2828, align 4
  %2862 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 5
  store i32 %2854, ptr %2862, align 4
  %2863 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 4
  %2864 = load i32, ptr %2863, align 4
  %2865 = icmp eq i32 %2864, 0
  br i1 %2865, label %2884, label %2866

2866:                                             ; preds = %2860
  %2867 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 2
  %2868 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 3
  br label %2869

2869:                                             ; preds = %2879, %2866
  %2870 = phi i32 [ 0, %2866 ], [ %2881, %2879 ]
  %2871 = phi i32 [ %2864, %2866 ], [ %2882, %2879 ]
  %2872 = and i32 %2871, 1
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %2879, label %2874

2874:                                             ; preds = %2869
  %2875 = load ptr, ptr %2, align 4
  %2876 = load i32, ptr %2867, align 4
  %2877 = add i32 %2876, %2870
  %2878 = load i32, ptr %2862, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2875, i32 noundef %2877, i32 noundef %2878) #11
  br label %2879

2879:                                             ; preds = %2874, %2869
  %2880 = load i32, ptr %2868, align 4
  %2881 = add i32 %2880, %2870
  %2882 = lshr i32 %2871, 1
  %2883 = icmp ult i32 %2871, 2
  br i1 %2883, label %2884, label %2869

2884:                                             ; preds = %2879, %2860
  %2885 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 1
  store i8 0, ptr %2885, align 4
  br label %2886

2886:                                             ; preds = %2884, %2856
  %2887 = load i32, ptr %2112, align 4
  %2888 = lshr i32 %2887, 24
  %2889 = and i32 %2888, 127
  %2890 = load i64, ptr %2829, align 4
  %2891 = trunc i64 %2890 to i32
  %2892 = lshr i32 %2891, 14
  %2893 = and i32 %2892, 127
  %2894 = tail call i32 @llvm.umax.i32(i32 %2889, i32 %2893)
  %2895 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28
  %2896 = shl nuw nsw i32 %2894, 24
  %2897 = load i32, ptr %2895, align 4
  %2898 = load i32, ptr %27, align 4
  %2899 = icmp eq i32 %2897, %2898
  br i1 %2899, label %2900, label %2903

2900:                                             ; preds = %2886
  %2901 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 5
  %2902 = load i32, ptr %2901, align 4
  br label %2915

2903:                                             ; preds = %2886
  %2904 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2905 = load ptr, ptr %2904, align 4
  %2906 = getelementptr inbounds %struct.nvkm_fb, ptr %2905, i32 0, i32 1, i32 1
  %2907 = load ptr, ptr %2906, align 4
  %2908 = getelementptr inbounds %struct.nvkm_device, ptr %2907, i32 0, i32 11
  %2909 = load ptr, ptr %2908, align 4
  %2910 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 2
  %2911 = load i32, ptr %2910, align 4
  %2912 = getelementptr i8, ptr %2909, i32 %2911
  %2913 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2912) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2914 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 5
  store i32 %2913, ptr %2914, align 4
  br label %2915

2915:                                             ; preds = %2903, %2900
  %2916 = phi i32 [ %2902, %2900 ], [ %2913, %2903 ]
  %2917 = and i32 %2916, -2130706433
  %2918 = or i32 %2917, %2896
  %2919 = icmp eq i32 %2916, %2918
  br i1 %2919, label %2920, label %2924

2920:                                             ; preds = %2915
  %2921 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 1
  %2922 = load i8, ptr %2921, align 4, !range !15
  %2923 = icmp eq i8 %2922, 0
  br i1 %2923, label %2950, label %2924

2924:                                             ; preds = %2920, %2915
  %2925 = load i32, ptr %27, align 4
  store i32 %2925, ptr %2895, align 4
  %2926 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 5
  store i32 %2918, ptr %2926, align 4
  %2927 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 4
  %2928 = load i32, ptr %2927, align 4
  %2929 = icmp eq i32 %2928, 0
  br i1 %2929, label %2948, label %2930

2930:                                             ; preds = %2924
  %2931 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 2
  %2932 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 3
  br label %2933

2933:                                             ; preds = %2943, %2930
  %2934 = phi i32 [ 0, %2930 ], [ %2945, %2943 ]
  %2935 = phi i32 [ %2928, %2930 ], [ %2946, %2943 ]
  %2936 = and i32 %2935, 1
  %2937 = icmp eq i32 %2936, 0
  br i1 %2937, label %2943, label %2938

2938:                                             ; preds = %2933
  %2939 = load ptr, ptr %2, align 4
  %2940 = load i32, ptr %2931, align 4
  %2941 = add i32 %2940, %2934
  %2942 = load i32, ptr %2926, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2939, i32 noundef %2941, i32 noundef %2942) #11
  br label %2943

2943:                                             ; preds = %2938, %2933
  %2944 = load i32, ptr %2932, align 4
  %2945 = add i32 %2944, %2934
  %2946 = lshr i32 %2935, 1
  %2947 = icmp ult i32 %2935, 2
  br i1 %2947, label %2948, label %2933

2948:                                             ; preds = %2943, %2924
  %2949 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 1
  store i8 0, ptr %2949, align 4
  br label %2950

2950:                                             ; preds = %2948, %2920
  %2951 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36
  %2952 = load i64, ptr %2829, align 4
  %2953 = trunc i64 %2952 to i32
  %2954 = lshr i32 %2953, 5
  %2955 = and i32 %2954, 2031616
  %2956 = load i32, ptr %2951, align 4
  %2957 = load i32, ptr %27, align 4
  %2958 = icmp eq i32 %2956, %2957
  br i1 %2958, label %2959, label %2962

2959:                                             ; preds = %2950
  %2960 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 5
  %2961 = load i32, ptr %2960, align 4
  br label %2974

2962:                                             ; preds = %2950
  %2963 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2964 = load ptr, ptr %2963, align 4
  %2965 = getelementptr inbounds %struct.nvkm_fb, ptr %2964, i32 0, i32 1, i32 1
  %2966 = load ptr, ptr %2965, align 4
  %2967 = getelementptr inbounds %struct.nvkm_device, ptr %2966, i32 0, i32 11
  %2968 = load ptr, ptr %2967, align 4
  %2969 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 2
  %2970 = load i32, ptr %2969, align 4
  %2971 = getelementptr i8, ptr %2968, i32 %2970
  %2972 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2971) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2973 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 5
  store i32 %2972, ptr %2973, align 4
  br label %2974

2974:                                             ; preds = %2962, %2959
  %2975 = phi i32 [ %2961, %2959 ], [ %2972, %2962 ]
  %2976 = and i32 %2975, -2031617
  %2977 = or i32 %2976, %2955
  %2978 = icmp eq i32 %2975, %2977
  br i1 %2978, label %2979, label %2983

2979:                                             ; preds = %2974
  %2980 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 1
  %2981 = load i8, ptr %2980, align 4, !range !15
  %2982 = icmp eq i8 %2981, 0
  br i1 %2982, label %3009, label %2983

2983:                                             ; preds = %2979, %2974
  %2984 = load i32, ptr %27, align 4
  store i32 %2984, ptr %2951, align 4
  %2985 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 5
  store i32 %2977, ptr %2985, align 4
  %2986 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 4
  %2987 = load i32, ptr %2986, align 4
  %2988 = icmp eq i32 %2987, 0
  br i1 %2988, label %3007, label %2989

2989:                                             ; preds = %2983
  %2990 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 2
  %2991 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 3
  br label %2992

2992:                                             ; preds = %3002, %2989
  %2993 = phi i32 [ 0, %2989 ], [ %3004, %3002 ]
  %2994 = phi i32 [ %2987, %2989 ], [ %3005, %3002 ]
  %2995 = and i32 %2994, 1
  %2996 = icmp eq i32 %2995, 0
  br i1 %2996, label %3002, label %2997

2997:                                             ; preds = %2992
  %2998 = load ptr, ptr %2, align 4
  %2999 = load i32, ptr %2990, align 4
  %3000 = add i32 %2999, %2993
  %3001 = load i32, ptr %2985, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2998, i32 noundef %3000, i32 noundef %3001) #11
  br label %3002

3002:                                             ; preds = %2997, %2992
  %3003 = load i32, ptr %2991, align 4
  %3004 = add i32 %3003, %2993
  %3005 = lshr i32 %2994, 1
  %3006 = icmp ult i32 %2994, 2
  br i1 %3006, label %3007, label %2992

3007:                                             ; preds = %3002, %2983
  %3008 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 1
  store i8 0, ptr %3008, align 4
  br label %3009

3009:                                             ; preds = %3007, %2979
  %3010 = load i32, ptr %27, align 4
  store i32 %3010, ptr %622, align 4
  store i32 1073741951, ptr %624, align 4
  %3011 = load i32, ptr %625, align 4
  %3012 = icmp eq i32 %3011, 0
  br i1 %3012, label %3031, label %3013

3013:                                             ; preds = %3009
  %3014 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 2
  %3015 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 3
  br label %3016

3016:                                             ; preds = %3026, %3013
  %3017 = phi i32 [ 0, %3013 ], [ %3028, %3026 ]
  %3018 = phi i32 [ %3011, %3013 ], [ %3029, %3026 ]
  %3019 = and i32 %3018, 1
  %3020 = icmp eq i32 %3019, 0
  br i1 %3020, label %3026, label %3021

3021:                                             ; preds = %3016
  %3022 = load ptr, ptr %2, align 4
  %3023 = load i32, ptr %3014, align 4
  %3024 = add i32 %3023, %3017
  %3025 = load i32, ptr %624, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3022, i32 noundef %3024, i32 noundef %3025) #11
  br label %3026

3026:                                             ; preds = %3021, %3016
  %3027 = load i32, ptr %3015, align 4
  %3028 = add i32 %3027, %3017
  %3029 = lshr i32 %3018, 1
  %3030 = icmp ult i32 %3018, 2
  br i1 %3030, label %3031, label %3016

3031:                                             ; preds = %3026, %3009
  %3032 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %3032, i32 noundef 1000) #11
  %3033 = load i32, ptr %27, align 4
  store i32 %3033, ptr %332, align 4
  store i32 1, ptr %334, align 4
  %3034 = load i32, ptr %335, align 4
  %3035 = icmp eq i32 %3034, 0
  br i1 %3035, label %3056, label %3036

3036:                                             ; preds = %3031
  %3037 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 2
  %3038 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 3
  br label %3039

3039:                                             ; preds = %3049, %3036
  %3040 = phi i32 [ 0, %3036 ], [ %3051, %3049 ]
  %3041 = phi i32 [ %3034, %3036 ], [ %3052, %3049 ]
  %3042 = and i32 %3041, 1
  %3043 = icmp eq i32 %3042, 0
  br i1 %3043, label %3049, label %3044

3044:                                             ; preds = %3039
  %3045 = load ptr, ptr %2, align 4
  %3046 = load i32, ptr %3037, align 4
  %3047 = add i32 %3046, %3040
  %3048 = load i32, ptr %334, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3045, i32 noundef %3047, i32 noundef %3048) #11
  br label %3049

3049:                                             ; preds = %3044, %3039
  %3050 = load i32, ptr %3038, align 4
  %3051 = add i32 %3050, %3040
  %3052 = lshr i32 %3041, 1
  %3053 = icmp ult i32 %3041, 2
  br i1 %3053, label %3054, label %3039

3054:                                             ; preds = %3049
  %3055 = load i32, ptr %27, align 4
  br label %3056

3056:                                             ; preds = %3054, %3031
  %3057 = phi i32 [ %3055, %3054 ], [ %3033, %3031 ]
  store i32 %3057, ptr %465, align 4
  store i32 1, ptr %466, align 4
  %3058 = load i32, ptr %467, align 4
  %3059 = icmp eq i32 %3058, 0
  br i1 %3059, label %3080, label %3060

3060:                                             ; preds = %3056
  %3061 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 2
  %3062 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 3
  br label %3063

3063:                                             ; preds = %3073, %3060
  %3064 = phi i32 [ 0, %3060 ], [ %3075, %3073 ]
  %3065 = phi i32 [ %3058, %3060 ], [ %3076, %3073 ]
  %3066 = and i32 %3065, 1
  %3067 = icmp eq i32 %3066, 0
  br i1 %3067, label %3073, label %3068

3068:                                             ; preds = %3063
  %3069 = load ptr, ptr %2, align 4
  %3070 = load i32, ptr %3061, align 4
  %3071 = add i32 %3070, %3064
  %3072 = load i32, ptr %466, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3069, i32 noundef %3071, i32 noundef %3072) #11
  br label %3073

3073:                                             ; preds = %3068, %3063
  %3074 = load i32, ptr %3062, align 4
  %3075 = add i32 %3074, %3064
  %3076 = lshr i32 %3065, 1
  %3077 = icmp ult i32 %3065, 2
  br i1 %3077, label %3078, label %3063

3078:                                             ; preds = %3073
  %3079 = load i32, ptr %27, align 4
  br label %3080

3080:                                             ; preds = %3078, %3056
  %3081 = phi i32 [ %3079, %3078 ], [ %3057, %3056 ]
  store i32 %3081, ptr %437, align 4
  store i32 -2147483648, ptr %439, align 4
  %3082 = load i32, ptr %440, align 4
  %3083 = icmp eq i32 %3082, 0
  br i1 %3083, label %3102, label %3084

3084:                                             ; preds = %3080
  %3085 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 2
  %3086 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 3
  br label %3087

3087:                                             ; preds = %3097, %3084
  %3088 = phi i32 [ 0, %3084 ], [ %3099, %3097 ]
  %3089 = phi i32 [ %3082, %3084 ], [ %3100, %3097 ]
  %3090 = and i32 %3089, 1
  %3091 = icmp eq i32 %3090, 0
  br i1 %3091, label %3097, label %3092

3092:                                             ; preds = %3087
  %3093 = load ptr, ptr %2, align 4
  %3094 = load i32, ptr %3085, align 4
  %3095 = add i32 %3094, %3088
  %3096 = load i32, ptr %439, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3093, i32 noundef %3095, i32 noundef %3096) #11
  br label %3097

3097:                                             ; preds = %3092, %3087
  %3098 = load i32, ptr %3086, align 4
  %3099 = add i32 %3098, %3088
  %3100 = lshr i32 %3089, 1
  %3101 = icmp ult i32 %3089, 2
  br i1 %3101, label %3102, label %3087

3102:                                             ; preds = %3097, %3080
  %3103 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %3103, i32 noundef 1000) #11
  %3104 = load i32, ptr %357, align 4
  %3105 = icmp eq i32 %3104, 0
  br i1 %3105, label %3106, label %3161

3106:                                             ; preds = %3102
  %3107 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1
  %3108 = load i32, ptr %3107, align 4
  %3109 = load i32, ptr %27, align 4
  %3110 = icmp eq i32 %3108, %3109
  br i1 %3110, label %3111, label %3114

3111:                                             ; preds = %3106
  %3112 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  %3113 = load i32, ptr %3112, align 4
  br label %3126

3114:                                             ; preds = %3106
  %3115 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3116 = load ptr, ptr %3115, align 4
  %3117 = getelementptr inbounds %struct.nvkm_fb, ptr %3116, i32 0, i32 1, i32 1
  %3118 = load ptr, ptr %3117, align 4
  %3119 = getelementptr inbounds %struct.nvkm_device, ptr %3118, i32 0, i32 11
  %3120 = load ptr, ptr %3119, align 4
  %3121 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %3122 = load i32, ptr %3121, align 4
  %3123 = getelementptr i8, ptr %3120, i32 %3122
  %3124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3123) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3125 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %3124, ptr %3125, align 4
  br label %3126

3126:                                             ; preds = %3114, %3111
  %3127 = phi i32 [ %3113, %3111 ], [ %3124, %3114 ]
  %3128 = and i32 %3127, -2
  %3129 = icmp eq i32 %3127, %3128
  br i1 %3129, label %3130, label %3134

3130:                                             ; preds = %3126
  %3131 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 1
  %3132 = load i8, ptr %3131, align 4, !range !15
  %3133 = icmp eq i8 %3132, 0
  br i1 %3133, label %3160, label %3134

3134:                                             ; preds = %3130, %3126
  %3135 = load i32, ptr %27, align 4
  store i32 %3135, ptr %3107, align 4
  %3136 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %3128, ptr %3136, align 4
  %3137 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 4
  %3138 = load i32, ptr %3137, align 4
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %3158, label %3140

3140:                                             ; preds = %3134
  %3141 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %3142 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 3
  br label %3143

3143:                                             ; preds = %3153, %3140
  %3144 = phi i32 [ 0, %3140 ], [ %3155, %3153 ]
  %3145 = phi i32 [ %3138, %3140 ], [ %3156, %3153 ]
  %3146 = and i32 %3145, 1
  %3147 = icmp eq i32 %3146, 0
  br i1 %3147, label %3153, label %3148

3148:                                             ; preds = %3143
  %3149 = load ptr, ptr %2, align 4
  %3150 = load i32, ptr %3141, align 4
  %3151 = add i32 %3150, %3144
  %3152 = load i32, ptr %3136, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3149, i32 noundef %3151, i32 noundef %3152) #11
  br label %3153

3153:                                             ; preds = %3148, %3143
  %3154 = load i32, ptr %3142, align 4
  %3155 = add i32 %3154, %3144
  %3156 = lshr i32 %3145, 1
  %3157 = icmp ult i32 %3145, 2
  br i1 %3157, label %3158, label %3143

3158:                                             ; preds = %3153, %3134
  %3159 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 1
  store i8 0, ptr %3159, align 4
  br label %3160

3160:                                             ; preds = %3158, %3130
  tail call fastcc void @nvkm_sddr3_dll_reset(ptr noundef %2)
  br label %3161

3161:                                             ; preds = %3160, %3102
  %3162 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51
  %3163 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 2
  %3164 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 11
  %3165 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 2
  %3166 = load i32, ptr %3165, align 4
  %3167 = load i32, ptr %3163, align 4
  %3168 = load i32, ptr %27, align 4
  %3169 = icmp eq i32 %3167, %3168
  br i1 %3169, label %3170, label %3173

3170:                                             ; preds = %3161
  %3171 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 2, i32 5
  %3172 = load i32, ptr %3171, align 4
  br label %3185

3173:                                             ; preds = %3161
  %3174 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3175 = load ptr, ptr %3174, align 4
  %3176 = getelementptr inbounds %struct.nvkm_fb, ptr %3175, i32 0, i32 1, i32 1
  %3177 = load ptr, ptr %3176, align 4
  %3178 = getelementptr inbounds %struct.nvkm_device, ptr %3177, i32 0, i32 11
  %3179 = load ptr, ptr %3178, align 4
  %3180 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 2, i32 2
  %3181 = load i32, ptr %3180, align 4
  %3182 = getelementptr i8, ptr %3179, i32 %3181
  %3183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3182) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3184 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 2, i32 5
  store i32 %3183, ptr %3184, align 4
  br label %3185

3185:                                             ; preds = %3173, %3170
  %3186 = phi i32 [ %3172, %3170 ], [ %3183, %3173 ]
  %3187 = and i32 %3186, -4096
  %3188 = or i32 %3187, %3166
  %3189 = icmp eq i32 %3186, %3188
  br i1 %3189, label %3190, label %3194

3190:                                             ; preds = %3185
  %3191 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 2, i32 1
  %3192 = load i8, ptr %3191, align 4, !range !15
  %3193 = icmp eq i8 %3192, 0
  br i1 %3193, label %3220, label %3194

3194:                                             ; preds = %3190, %3185
  %3195 = load i32, ptr %27, align 4
  store i32 %3195, ptr %3163, align 4
  %3196 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 2, i32 5
  store i32 %3188, ptr %3196, align 4
  %3197 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 2, i32 4
  %3198 = load i32, ptr %3197, align 4
  %3199 = icmp eq i32 %3198, 0
  br i1 %3199, label %3218, label %3200

3200:                                             ; preds = %3194
  %3201 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 2, i32 2
  %3202 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 2, i32 3
  br label %3203

3203:                                             ; preds = %3213, %3200
  %3204 = phi i32 [ 0, %3200 ], [ %3215, %3213 ]
  %3205 = phi i32 [ %3198, %3200 ], [ %3216, %3213 ]
  %3206 = and i32 %3205, 1
  %3207 = icmp eq i32 %3206, 0
  br i1 %3207, label %3213, label %3208

3208:                                             ; preds = %3203
  %3209 = load ptr, ptr %2, align 4
  %3210 = load i32, ptr %3201, align 4
  %3211 = add i32 %3210, %3204
  %3212 = load i32, ptr %3196, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3209, i32 noundef %3211, i32 noundef %3212) #11
  br label %3213

3213:                                             ; preds = %3208, %3203
  %3214 = load i32, ptr %3202, align 4
  %3215 = add i32 %3214, %3204
  %3216 = lshr i32 %3205, 1
  %3217 = icmp ult i32 %3205, 2
  br i1 %3217, label %3218, label %3203

3218:                                             ; preds = %3213, %3194
  %3219 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 2, i32 1
  store i8 0, ptr %3219, align 4
  br label %3220

3220:                                             ; preds = %3218, %3190
  %3221 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1
  %3222 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  %3223 = load i32, ptr %3222, align 4
  %3224 = load i32, ptr %3221, align 4
  %3225 = load i32, ptr %27, align 4
  %3226 = icmp eq i32 %3224, %3225
  br i1 %3226, label %3227, label %3230

3227:                                             ; preds = %3220
  %3228 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  %3229 = load i32, ptr %3228, align 4
  br label %3242

3230:                                             ; preds = %3220
  %3231 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3232 = load ptr, ptr %3231, align 4
  %3233 = getelementptr inbounds %struct.nvkm_fb, ptr %3232, i32 0, i32 1, i32 1
  %3234 = load ptr, ptr %3233, align 4
  %3235 = getelementptr inbounds %struct.nvkm_device, ptr %3234, i32 0, i32 11
  %3236 = load ptr, ptr %3235, align 4
  %3237 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %3238 = load i32, ptr %3237, align 4
  %3239 = getelementptr i8, ptr %3236, i32 %3238
  %3240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3239) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3241 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %3240, ptr %3241, align 4
  br label %3242

3242:                                             ; preds = %3230, %3227
  %3243 = phi i32 [ %3229, %3227 ], [ %3240, %3230 ]
  %3244 = icmp eq i32 %3243, %3223
  br i1 %3244, label %3245, label %3249

3245:                                             ; preds = %3242
  %3246 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 1
  %3247 = load i8, ptr %3246, align 4, !range !15
  %3248 = icmp eq i8 %3247, 0
  br i1 %3248, label %3275, label %3249

3249:                                             ; preds = %3245, %3242
  %3250 = load i32, ptr %27, align 4
  store i32 %3250, ptr %3221, align 4
  %3251 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %3223, ptr %3251, align 4
  %3252 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 4
  %3253 = load i32, ptr %3252, align 4
  %3254 = icmp eq i32 %3253, 0
  br i1 %3254, label %3273, label %3255

3255:                                             ; preds = %3249
  %3256 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %3257 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 3
  br label %3258

3258:                                             ; preds = %3268, %3255
  %3259 = phi i32 [ 0, %3255 ], [ %3270, %3268 ]
  %3260 = phi i32 [ %3253, %3255 ], [ %3271, %3268 ]
  %3261 = and i32 %3260, 1
  %3262 = icmp eq i32 %3261, 0
  br i1 %3262, label %3268, label %3263

3263:                                             ; preds = %3258
  %3264 = load ptr, ptr %2, align 4
  %3265 = load i32, ptr %3256, align 4
  %3266 = add i32 %3265, %3259
  %3267 = load i32, ptr %3251, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3264, i32 noundef %3266, i32 noundef %3267) #11
  br label %3268

3268:                                             ; preds = %3263, %3258
  %3269 = load i32, ptr %3257, align 4
  %3270 = add i32 %3269, %3259
  %3271 = lshr i32 %3260, 1
  %3272 = icmp ult i32 %3260, 2
  br i1 %3272, label %3273, label %3258

3273:                                             ; preds = %3268, %3249
  %3274 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 1
  store i8 0, ptr %3274, align 4
  br label %3275

3275:                                             ; preds = %3273, %3245
  %3276 = load i32, ptr %3164, align 4
  %3277 = load i32, ptr %27, align 4
  store i32 %3277, ptr %3162, align 4
  %3278 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 0, i32 5
  store i32 %3276, ptr %3278, align 4
  %3279 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 0, i32 4
  %3280 = load i32, ptr %3279, align 4
  %3281 = icmp eq i32 %3280, 0
  br i1 %3281, label %3300, label %3282

3282:                                             ; preds = %3275
  %3283 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 0, i32 2
  %3284 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 0, i32 3
  br label %3285

3285:                                             ; preds = %3295, %3282
  %3286 = phi i32 [ 0, %3282 ], [ %3297, %3295 ]
  %3287 = phi i32 [ %3280, %3282 ], [ %3298, %3295 ]
  %3288 = and i32 %3287, 1
  %3289 = icmp eq i32 %3288, 0
  br i1 %3289, label %3295, label %3290

3290:                                             ; preds = %3285
  %3291 = load ptr, ptr %2, align 4
  %3292 = load i32, ptr %3283, align 4
  %3293 = add i32 %3292, %3286
  %3294 = load i32, ptr %3278, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3291, i32 noundef %3293, i32 noundef %3294) #11
  br label %3295

3295:                                             ; preds = %3290, %3285
  %3296 = load i32, ptr %3284, align 4
  %3297 = add i32 %3296, %3286
  %3298 = lshr i32 %3287, 1
  %3299 = icmp ult i32 %3287, 2
  br i1 %3299, label %3300, label %3285

3300:                                             ; preds = %3295, %3275
  %3301 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %3301, i32 noundef 1000) #11
  %3302 = load i32, ptr %357, align 4
  %3303 = icmp eq i32 %3302, 0
  br i1 %3303, label %3304, label %3306

3304:                                             ; preds = %3300
  tail call fastcc void @nvkm_sddr3_dll_reset(ptr noundef %2)
  %3305 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %3305, i32 noundef 1000) #11
  br label %3306

3306:                                             ; preds = %3304, %3300
  br i1 %21, label %3413, label %3307

3307:                                             ; preds = %3306
  %3308 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 2
  %3309 = load i32, ptr %3308, align 4
  %3310 = icmp eq i32 %3309, 0
  br i1 %3310, label %3413, label %3311

3311:                                             ; preds = %3307
  %3312 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5
  %3313 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 6
  %3314 = load i32, ptr %3313, align 4
  %3315 = load i32, ptr %3312, align 4
  %3316 = load i32, ptr %27, align 4
  %3317 = icmp eq i32 %3315, %3316
  br i1 %3317, label %3318, label %3321

3318:                                             ; preds = %3311
  %3319 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  %3320 = load i32, ptr %3319, align 4
  br label %3331

3321:                                             ; preds = %3311
  %3322 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3323 = load ptr, ptr %3322, align 4
  %3324 = getelementptr inbounds %struct.nvkm_fb, ptr %3323, i32 0, i32 1, i32 1
  %3325 = load ptr, ptr %3324, align 4
  %3326 = getelementptr inbounds %struct.nvkm_device, ptr %3325, i32 0, i32 11
  %3327 = load ptr, ptr %3326, align 4
  %3328 = getelementptr i8, ptr %3327, i32 %3309
  %3329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3328) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3330 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %3329, ptr %3330, align 4
  br label %3331

3331:                                             ; preds = %3321, %3318
  %3332 = phi i32 [ %3320, %3318 ], [ %3329, %3321 ]
  %3333 = and i32 %3332, -12289
  %3334 = or i32 %3333, %3314
  %3335 = icmp eq i32 %3332, %3334
  br i1 %3335, label %3336, label %3340

3336:                                             ; preds = %3331
  %3337 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 1
  %3338 = load i8, ptr %3337, align 4, !range !15
  %3339 = icmp eq i8 %3338, 0
  br i1 %3339, label %3365, label %3340

3340:                                             ; preds = %3336, %3331
  %3341 = load i32, ptr %27, align 4
  store i32 %3341, ptr %3312, align 4
  %3342 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %3334, ptr %3342, align 4
  %3343 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 4
  %3344 = load i32, ptr %3343, align 4
  %3345 = icmp eq i32 %3344, 0
  br i1 %3345, label %3363, label %3346

3346:                                             ; preds = %3340
  %3347 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 3
  br label %3348

3348:                                             ; preds = %3358, %3346
  %3349 = phi i32 [ 0, %3346 ], [ %3360, %3358 ]
  %3350 = phi i32 [ %3344, %3346 ], [ %3361, %3358 ]
  %3351 = and i32 %3350, 1
  %3352 = icmp eq i32 %3351, 0
  br i1 %3352, label %3358, label %3353

3353:                                             ; preds = %3348
  %3354 = load ptr, ptr %2, align 4
  %3355 = load i32, ptr %3308, align 4
  %3356 = add i32 %3355, %3349
  %3357 = load i32, ptr %3342, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3354, i32 noundef %3356, i32 noundef %3357) #11
  br label %3358

3358:                                             ; preds = %3353, %3348
  %3359 = load i32, ptr %3347, align 4
  %3360 = add i32 %3359, %3349
  %3361 = lshr i32 %3350, 1
  %3362 = icmp ult i32 %3350, 2
  br i1 %3362, label %3363, label %3348

3363:                                             ; preds = %3358, %3340
  %3364 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 1
  store i8 0, ptr %3364, align 4
  br label %3365

3365:                                             ; preds = %3363, %3336
  %3366 = load i32, ptr %3312, align 4
  %3367 = load i32, ptr %27, align 4
  %3368 = icmp eq i32 %3366, %3367
  br i1 %3368, label %3369, label %3372

3369:                                             ; preds = %3365
  %3370 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  %3371 = load i32, ptr %3370, align 4
  br label %3383

3372:                                             ; preds = %3365
  %3373 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3374 = load ptr, ptr %3373, align 4
  %3375 = getelementptr inbounds %struct.nvkm_fb, ptr %3374, i32 0, i32 1, i32 1
  %3376 = load ptr, ptr %3375, align 4
  %3377 = getelementptr inbounds %struct.nvkm_device, ptr %3376, i32 0, i32 11
  %3378 = load ptr, ptr %3377, align 4
  %3379 = load i32, ptr %3308, align 4
  %3380 = getelementptr i8, ptr %3378, i32 %3379
  %3381 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3380) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3382 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %3381, ptr %3382, align 4
  br label %3383

3383:                                             ; preds = %3372, %3369
  %3384 = phi i32 [ %3371, %3369 ], [ %3381, %3372 ]
  %3385 = icmp eq i32 %3332, %3384
  br i1 %3385, label %3413, label %3386

3386:                                             ; preds = %3383
  %3387 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7
  %3388 = load i32, ptr %27, align 4
  store i32 %3388, ptr %3387, align 4
  %3389 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 5
  store i32 1, ptr %3389, align 4
  %3390 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 4
  %3391 = load i32, ptr %3390, align 4
  %3392 = icmp eq i32 %3391, 0
  br i1 %3392, label %3411, label %3393

3393:                                             ; preds = %3386
  %3394 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 2
  %3395 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 3
  br label %3396

3396:                                             ; preds = %3406, %3393
  %3397 = phi i32 [ 0, %3393 ], [ %3408, %3406 ]
  %3398 = phi i32 [ %3391, %3393 ], [ %3409, %3406 ]
  %3399 = and i32 %3398, 1
  %3400 = icmp eq i32 %3399, 0
  br i1 %3400, label %3406, label %3401

3401:                                             ; preds = %3396
  %3402 = load ptr, ptr %2, align 4
  %3403 = load i32, ptr %3394, align 4
  %3404 = add i32 %3403, %3397
  %3405 = load i32, ptr %3389, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3402, i32 noundef %3404, i32 noundef %3405) #11
  br label %3406

3406:                                             ; preds = %3401, %3396
  %3407 = load i32, ptr %3395, align 4
  %3408 = add i32 %3407, %3397
  %3409 = lshr i32 %3398, 1
  %3410 = icmp ult i32 %3398, 2
  br i1 %3410, label %3411, label %3396

3411:                                             ; preds = %3406, %3386
  %3412 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %3412, i32 noundef 20000) #11
  br label %3413

3413:                                             ; preds = %3411, %3383, %3307, %3306
  %3414 = load i32, ptr %1825, align 8
  %3415 = icmp eq i32 %3414, 2
  br i1 %3415, label %3523, label %3416

3416:                                             ; preds = %3413
  %3417 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44
  %3418 = load i32, ptr %3417, align 4
  %3419 = load i32, ptr %27, align 4
  %3420 = icmp eq i32 %3418, %3419
  br i1 %3420, label %3421, label %3424

3421:                                             ; preds = %3416
  %3422 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %3423 = load i32, ptr %3422, align 4
  br label %3436

3424:                                             ; preds = %3416
  %3425 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3426 = load ptr, ptr %3425, align 4
  %3427 = getelementptr inbounds %struct.nvkm_fb, ptr %3426, i32 0, i32 1, i32 1
  %3428 = load ptr, ptr %3427, align 4
  %3429 = getelementptr inbounds %struct.nvkm_device, ptr %3428, i32 0, i32 11
  %3430 = load ptr, ptr %3429, align 4
  %3431 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %3432 = load i32, ptr %3431, align 4
  %3433 = getelementptr i8, ptr %3430, i32 %3432
  %3434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3433) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3435 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %3434, ptr %3435, align 4
  br label %3436

3436:                                             ; preds = %3424, %3421
  %3437 = phi i32 [ %3423, %3421 ], [ %3434, %3424 ]
  %3438 = or i32 %3437, 16777216
  %3439 = icmp eq i32 %3437, %3438
  br i1 %3439, label %3440, label %3444

3440:                                             ; preds = %3436
  %3441 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  %3442 = load i8, ptr %3441, align 4, !range !15
  %3443 = icmp eq i8 %3442, 0
  br i1 %3443, label %3470, label %3444

3444:                                             ; preds = %3440, %3436
  %3445 = load i32, ptr %27, align 4
  store i32 %3445, ptr %3417, align 4
  %3446 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %3438, ptr %3446, align 4
  %3447 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %3448 = load i32, ptr %3447, align 4
  %3449 = icmp eq i32 %3448, 0
  br i1 %3449, label %3468, label %3450

3450:                                             ; preds = %3444
  %3451 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %3452 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %3453

3453:                                             ; preds = %3463, %3450
  %3454 = phi i32 [ 0, %3450 ], [ %3465, %3463 ]
  %3455 = phi i32 [ %3448, %3450 ], [ %3466, %3463 ]
  %3456 = and i32 %3455, 1
  %3457 = icmp eq i32 %3456, 0
  br i1 %3457, label %3463, label %3458

3458:                                             ; preds = %3453
  %3459 = load ptr, ptr %2, align 4
  %3460 = load i32, ptr %3451, align 4
  %3461 = add i32 %3460, %3454
  %3462 = load i32, ptr %3446, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3459, i32 noundef %3461, i32 noundef %3462) #11
  br label %3463

3463:                                             ; preds = %3458, %3453
  %3464 = load i32, ptr %3452, align 4
  %3465 = add i32 %3464, %3454
  %3466 = lshr i32 %3455, 1
  %3467 = icmp ult i32 %3455, 2
  br i1 %3467, label %3468, label %3453

3468:                                             ; preds = %3463, %3444
  %3469 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  store i8 0, ptr %3469, align 4
  br label %3470

3470:                                             ; preds = %3468, %3440
  %3471 = load i32, ptr %3417, align 4
  %3472 = load i32, ptr %27, align 4
  %3473 = icmp eq i32 %3471, %3472
  br i1 %3473, label %3474, label %3477

3474:                                             ; preds = %3470
  %3475 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %3476 = load i32, ptr %3475, align 4
  br label %3489

3477:                                             ; preds = %3470
  %3478 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3479 = load ptr, ptr %3478, align 4
  %3480 = getelementptr inbounds %struct.nvkm_fb, ptr %3479, i32 0, i32 1, i32 1
  %3481 = load ptr, ptr %3480, align 4
  %3482 = getelementptr inbounds %struct.nvkm_device, ptr %3481, i32 0, i32 11
  %3483 = load ptr, ptr %3482, align 4
  %3484 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %3485 = load i32, ptr %3484, align 4
  %3486 = getelementptr i8, ptr %3483, i32 %3485
  %3487 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3486) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3488 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %3487, ptr %3488, align 4
  br label %3489

3489:                                             ; preds = %3477, %3474
  %3490 = phi i32 [ %3476, %3474 ], [ %3487, %3477 ]
  %3491 = and i32 %3490, -16777217
  %3492 = icmp eq i32 %3490, %3491
  br i1 %3492, label %3493, label %3497

3493:                                             ; preds = %3489
  %3494 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  %3495 = load i8, ptr %3494, align 4, !range !15
  %3496 = icmp eq i8 %3495, 0
  br i1 %3496, label %3523, label %3497

3497:                                             ; preds = %3493, %3489
  %3498 = load i32, ptr %27, align 4
  store i32 %3498, ptr %3417, align 4
  %3499 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %3491, ptr %3499, align 4
  %3500 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %3501 = load i32, ptr %3500, align 4
  %3502 = icmp eq i32 %3501, 0
  br i1 %3502, label %3521, label %3503

3503:                                             ; preds = %3497
  %3504 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %3505 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %3506

3506:                                             ; preds = %3516, %3503
  %3507 = phi i32 [ 0, %3503 ], [ %3518, %3516 ]
  %3508 = phi i32 [ %3501, %3503 ], [ %3519, %3516 ]
  %3509 = and i32 %3508, 1
  %3510 = icmp eq i32 %3509, 0
  br i1 %3510, label %3516, label %3511

3511:                                             ; preds = %3506
  %3512 = load ptr, ptr %2, align 4
  %3513 = load i32, ptr %3504, align 4
  %3514 = add i32 %3513, %3507
  %3515 = load i32, ptr %3499, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3512, i32 noundef %3514, i32 noundef %3515) #11
  br label %3516

3516:                                             ; preds = %3511, %3506
  %3517 = load i32, ptr %3505, align 4
  %3518 = add i32 %3517, %3507
  %3519 = lshr i32 %3508, 1
  %3520 = icmp ult i32 %3508, 2
  br i1 %3520, label %3521, label %3506

3521:                                             ; preds = %3516, %3497
  %3522 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  store i8 0, ptr %3522, align 4
  br label %3523

3523:                                             ; preds = %3521, %3493, %3413
  %3524 = load i32, ptr %221, align 4
  %3525 = load i32, ptr %27, align 4
  %3526 = icmp eq i32 %3524, %3525
  br i1 %3526, label %3527, label %3530

3527:                                             ; preds = %3523
  %3528 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %3529 = load i32, ptr %3528, align 4
  br label %3542

3530:                                             ; preds = %3523
  %3531 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3532 = load ptr, ptr %3531, align 4
  %3533 = getelementptr inbounds %struct.nvkm_fb, ptr %3532, i32 0, i32 1, i32 1
  %3534 = load ptr, ptr %3533, align 4
  %3535 = getelementptr inbounds %struct.nvkm_device, ptr %3534, i32 0, i32 11
  %3536 = load ptr, ptr %3535, align 4
  %3537 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %3538 = load i32, ptr %3537, align 4
  %3539 = getelementptr i8, ptr %3536, i32 %3538
  %3540 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3539) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3541 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %3540, ptr %3541, align 4
  br label %3542

3542:                                             ; preds = %3530, %3527
  %3543 = phi i32 [ %3529, %3527 ], [ %3540, %3530 ]
  %3544 = or i32 %3543, -2147483648
  %3545 = icmp eq i32 %3543, %3544
  br i1 %3545, label %3546, label %3550

3546:                                             ; preds = %3542
  %3547 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %3548 = load i8, ptr %3547, align 4, !range !15
  %3549 = icmp eq i8 %3548, 0
  br i1 %3549, label %3576, label %3550

3550:                                             ; preds = %3546, %3542
  %3551 = load i32, ptr %27, align 4
  store i32 %3551, ptr %221, align 4
  %3552 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %3544, ptr %3552, align 4
  %3553 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %3554 = load i32, ptr %3553, align 4
  %3555 = icmp eq i32 %3554, 0
  br i1 %3555, label %3574, label %3556

3556:                                             ; preds = %3550
  %3557 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %3558 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %3559

3559:                                             ; preds = %3569, %3556
  %3560 = phi i32 [ 0, %3556 ], [ %3571, %3569 ]
  %3561 = phi i32 [ %3554, %3556 ], [ %3572, %3569 ]
  %3562 = and i32 %3561, 1
  %3563 = icmp eq i32 %3562, 0
  br i1 %3563, label %3569, label %3564

3564:                                             ; preds = %3559
  %3565 = load ptr, ptr %2, align 4
  %3566 = load i32, ptr %3557, align 4
  %3567 = add i32 %3566, %3560
  %3568 = load i32, ptr %3552, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3565, i32 noundef %3567, i32 noundef %3568) #11
  br label %3569

3569:                                             ; preds = %3564, %3559
  %3570 = load i32, ptr %3558, align 4
  %3571 = add i32 %3570, %3560
  %3572 = lshr i32 %3561, 1
  %3573 = icmp ult i32 %3561, 2
  br i1 %3573, label %3574, label %3559

3574:                                             ; preds = %3569, %3550
  %3575 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %3575, align 4
  br label %3576

3576:                                             ; preds = %3574, %3546
  %3577 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 57
  %3578 = load i32, ptr %27, align 4
  store i32 %3578, ptr %3577, align 4
  %3579 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 57, i32 5
  store i32 1, ptr %3579, align 4
  %3580 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 57, i32 4
  %3581 = load i32, ptr %3580, align 4
  %3582 = icmp eq i32 %3581, 0
  br i1 %3582, label %3603, label %3583

3583:                                             ; preds = %3576
  %3584 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 57, i32 2
  %3585 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 57, i32 3
  br label %3586

3586:                                             ; preds = %3596, %3583
  %3587 = phi i32 [ 0, %3583 ], [ %3598, %3596 ]
  %3588 = phi i32 [ %3581, %3583 ], [ %3599, %3596 ]
  %3589 = and i32 %3588, 1
  %3590 = icmp eq i32 %3589, 0
  br i1 %3590, label %3596, label %3591

3591:                                             ; preds = %3586
  %3592 = load ptr, ptr %2, align 4
  %3593 = load i32, ptr %3584, align 4
  %3594 = add i32 %3593, %3587
  %3595 = load i32, ptr %3579, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3592, i32 noundef %3594, i32 noundef %3595) #11
  br label %3596

3596:                                             ; preds = %3591, %3586
  %3597 = load i32, ptr %3585, align 4
  %3598 = add i32 %3597, %3587
  %3599 = lshr i32 %3588, 1
  %3600 = icmp ult i32 %3588, 2
  br i1 %3600, label %3601, label %3586

3601:                                             ; preds = %3596
  %3602 = load i32, ptr %27, align 4
  br label %3603

3603:                                             ; preds = %3601, %3576
  %3604 = phi i32 [ %3602, %3601 ], [ %3578, %3576 ]
  %3605 = load i32, ptr %221, align 4
  %3606 = icmp eq i32 %3605, %3604
  br i1 %3606, label %3607, label %3610

3607:                                             ; preds = %3603
  %3608 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %3609 = load i32, ptr %3608, align 4
  br label %3622

3610:                                             ; preds = %3603
  %3611 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3612 = load ptr, ptr %3611, align 4
  %3613 = getelementptr inbounds %struct.nvkm_fb, ptr %3612, i32 0, i32 1, i32 1
  %3614 = load ptr, ptr %3613, align 4
  %3615 = getelementptr inbounds %struct.nvkm_device, ptr %3614, i32 0, i32 11
  %3616 = load ptr, ptr %3615, align 4
  %3617 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %3618 = load i32, ptr %3617, align 4
  %3619 = getelementptr i8, ptr %3616, i32 %3618
  %3620 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3619) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3621 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %3620, ptr %3621, align 4
  br label %3622

3622:                                             ; preds = %3610, %3607
  %3623 = phi i32 [ %3609, %3607 ], [ %3620, %3610 ]
  %3624 = and i32 %3623, 2147483647
  %3625 = icmp sgt i32 %3623, -1
  br i1 %3625, label %3626, label %3630

3626:                                             ; preds = %3622
  %3627 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %3628 = load i8, ptr %3627, align 4, !range !15
  %3629 = icmp eq i8 %3628, 0
  br i1 %3629, label %3656, label %3630

3630:                                             ; preds = %3626, %3622
  %3631 = load i32, ptr %27, align 4
  store i32 %3631, ptr %221, align 4
  %3632 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %3624, ptr %3632, align 4
  %3633 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %3634 = load i32, ptr %3633, align 4
  %3635 = icmp eq i32 %3634, 0
  br i1 %3635, label %3654, label %3636

3636:                                             ; preds = %3630
  %3637 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %3638 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %3639

3639:                                             ; preds = %3649, %3636
  %3640 = phi i32 [ 0, %3636 ], [ %3651, %3649 ]
  %3641 = phi i32 [ %3634, %3636 ], [ %3652, %3649 ]
  %3642 = and i32 %3641, 1
  %3643 = icmp eq i32 %3642, 0
  br i1 %3643, label %3649, label %3644

3644:                                             ; preds = %3639
  %3645 = load ptr, ptr %2, align 4
  %3646 = load i32, ptr %3637, align 4
  %3647 = add i32 %3646, %3640
  %3648 = load i32, ptr %3632, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3645, i32 noundef %3647, i32 noundef %3648) #11
  br label %3649

3649:                                             ; preds = %3644, %3639
  %3650 = load i32, ptr %3638, align 4
  %3651 = add i32 %3650, %3640
  %3652 = lshr i32 %3641, 1
  %3653 = icmp ult i32 %3641, 2
  br i1 %3653, label %3654, label %3639

3654:                                             ; preds = %3649, %3630
  %3655 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %3655, align 4
  br label %3656

3656:                                             ; preds = %3654, %3626
  %3657 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %3657, i32 noundef 1000) #11
  %3658 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_unblock(ptr noundef %3658) #11
  %3659 = load ptr, ptr %81, align 4
  %3660 = getelementptr inbounds %struct.nvkm_fb, ptr %3659, i32 0, i32 1, i32 1
  %3661 = load ptr, ptr %3660, align 4
  %3662 = getelementptr inbounds %struct.nvkm_device, ptr %3661, i32 0, i32 50
  %3663 = load ptr, ptr %3662, align 8
  %3664 = icmp eq ptr %3663, null
  br i1 %3664, label %3690, label %3665

3665:                                             ; preds = %3656
  %3666 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52
  %3667 = load i32, ptr %27, align 4
  store i32 %3667, ptr %3666, align 4
  %3668 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 5
  store i32 252645120, ptr %3668, align 4
  %3669 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 4
  %3670 = load i32, ptr %3669, align 4
  %3671 = icmp eq i32 %3670, 0
  br i1 %3671, label %3690, label %3672

3672:                                             ; preds = %3665
  %3673 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 2
  %3674 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 3
  br label %3675

3675:                                             ; preds = %3685, %3672
  %3676 = phi i32 [ 0, %3672 ], [ %3687, %3685 ]
  %3677 = phi i32 [ %3670, %3672 ], [ %3688, %3685 ]
  %3678 = and i32 %3677, 1
  %3679 = icmp eq i32 %3678, 0
  br i1 %3679, label %3685, label %3680

3680:                                             ; preds = %3675
  %3681 = load ptr, ptr %2, align 4
  %3682 = load i32, ptr %3673, align 4
  %3683 = add i32 %3682, %3676
  %3684 = load i32, ptr %3668, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3681, i32 noundef %3683, i32 noundef %3684) #11
  br label %3685

3685:                                             ; preds = %3680, %3675
  %3686 = load i32, ptr %3674, align 4
  %3687 = add i32 %3686, %3676
  %3688 = lshr i32 %3677, 1
  %3689 = icmp ult i32 %3677, 2
  br i1 %3689, label %3690, label %3675

3690:                                             ; preds = %3685, %3665, %3656
  %3691 = load i64, ptr %1888, align 4
  %3692 = trunc i64 %3691 to i32
  %3693 = shl i32 %3692, 11
  %3694 = and i32 %3693, 2048
  %3695 = load i32, ptr %221, align 4
  %3696 = load i32, ptr %27, align 4
  %3697 = icmp eq i32 %3695, %3696
  br i1 %3697, label %3698, label %3701

3698:                                             ; preds = %3690
  %3699 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %3700 = load i32, ptr %3699, align 4
  br label %3713

3701:                                             ; preds = %3690
  %3702 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3703 = load ptr, ptr %3702, align 4
  %3704 = getelementptr inbounds %struct.nvkm_fb, ptr %3703, i32 0, i32 1, i32 1
  %3705 = load ptr, ptr %3704, align 4
  %3706 = getelementptr inbounds %struct.nvkm_device, ptr %3705, i32 0, i32 11
  %3707 = load ptr, ptr %3706, align 4
  %3708 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %3709 = load i32, ptr %3708, align 4
  %3710 = getelementptr i8, ptr %3707, i32 %3709
  %3711 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3710) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3712 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %3711, ptr %3712, align 4
  br label %3713

3713:                                             ; preds = %3701, %3698
  %3714 = phi i32 [ %3700, %3698 ], [ %3711, %3701 ]
  %3715 = and i32 %3714, -2049
  %3716 = or i32 %3715, %3694
  %3717 = icmp eq i32 %3714, %3716
  br i1 %3717, label %3718, label %3722

3718:                                             ; preds = %3713
  %3719 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %3720 = load i8, ptr %3719, align 4, !range !15
  %3721 = icmp eq i8 %3720, 0
  br i1 %3721, label %3748, label %3722

3722:                                             ; preds = %3718, %3713
  %3723 = load i32, ptr %27, align 4
  store i32 %3723, ptr %221, align 4
  %3724 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %3716, ptr %3724, align 4
  %3725 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %3726 = load i32, ptr %3725, align 4
  %3727 = icmp eq i32 %3726, 0
  br i1 %3727, label %3746, label %3728

3728:                                             ; preds = %3722
  %3729 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %3730 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %3731

3731:                                             ; preds = %3741, %3728
  %3732 = phi i32 [ 0, %3728 ], [ %3743, %3741 ]
  %3733 = phi i32 [ %3726, %3728 ], [ %3744, %3741 ]
  %3734 = and i32 %3733, 1
  %3735 = icmp eq i32 %3734, 0
  br i1 %3735, label %3741, label %3736

3736:                                             ; preds = %3731
  %3737 = load ptr, ptr %2, align 4
  %3738 = load i32, ptr %3729, align 4
  %3739 = add i32 %3738, %3732
  %3740 = load i32, ptr %3724, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3737, i32 noundef %3739, i32 noundef %3740) #11
  br label %3741

3741:                                             ; preds = %3736, %3731
  %3742 = load i32, ptr %3730, align 4
  %3743 = add i32 %3742, %3732
  %3744 = lshr i32 %3733, 1
  %3745 = icmp ult i32 %3733, 2
  br i1 %3745, label %3746, label %3731

3746:                                             ; preds = %3741, %3722
  %3747 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %3747, align 4
  br label %3748

3748:                                             ; preds = %3746, %3718
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gddr5_calc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gk104_ram_calc_gddr5(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  %9 = lshr i32 %6, 9
  %10 = and i32 %9, 1
  %11 = xor i32 %10, 1
  %12 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  %19 = load i32, ptr %18, align 4
  br label %32

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_fb, ptr %22, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %26, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %31 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %20, %17
  %33 = phi i32 [ %19, %17 ], [ %30, %20 ]
  %34 = or i32 %33, 1073741824
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  %38 = load i8, ptr %37, align 4, !range !15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %36, %32
  %41 = load i32, ptr %14, align 4
  store i32 %41, ptr %12, align 4
  %42 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %34, ptr %42, align 4
  %43 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %48 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 3
  br label %49

49:                                               ; preds = %59, %46
  %50 = phi i32 [ 0, %46 ], [ %61, %59 ]
  %51 = phi i32 [ %44, %46 ], [ %62, %59 ]
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %2, align 4
  %56 = load i32, ptr %47, align 4
  %57 = add i32 %56, %50
  %58 = load i32, ptr %42, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %55, i32 noundef %57, i32 noundef %58) #11
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, ptr %48, align 4
  %61 = add i32 %60, %50
  %62 = lshr i32 %51, 1
  %63 = icmp ult i32 %51, 2
  br i1 %63, label %64, label %49

64:                                               ; preds = %59, %40
  %65 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  store i8 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %36
  %67 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_block(ptr noundef %67) #11
  %68 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_fb, ptr %69, i32 0, i32 1, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 50
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %100, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52
  %77 = load i32, ptr %14, align 4
  store i32 %77, ptr %76, align 4
  %78 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 5
  store i32 252641280, ptr %78, align 4
  %79 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 2
  %84 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 3
  br label %85

85:                                               ; preds = %95, %82
  %86 = phi i32 [ 0, %82 ], [ %97, %95 ]
  %87 = phi i32 [ %80, %82 ], [ %98, %95 ]
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %2, align 4
  %92 = load i32, ptr %83, align 4
  %93 = add i32 %92, %86
  %94 = load i32, ptr %78, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %91, i32 noundef %93, i32 noundef %94) #11
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, ptr %84, align 4
  %97 = add i32 %96, %86
  %98 = lshr i32 %87, 1
  %99 = icmp ult i32 %87, 2
  br i1 %99, label %100, label %85

100:                                              ; preds = %95, %75, %66
  %101 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 11
  %102 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 60
  %105 = icmp eq i32 %104, 48
  br i1 %105, label %192, label %106

106:                                              ; preds = %100
  %107 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = load i32, ptr %14, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  %113 = load i32, ptr %112, align 4
  br label %126

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_fb, ptr %116, i32 0, i32 1, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nvkm_device, ptr %118, i32 0, i32 11
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr i8, ptr %120, i32 %122
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %125 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %124, ptr %125, align 4
  br label %126

126:                                              ; preds = %114, %111
  %127 = phi i32 [ %113, %111 ], [ %124, %114 ]
  %128 = and i32 %127, -61
  %129 = or i32 %128, %104
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 1
  %133 = load i8, ptr %132, align 4, !range !15
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %161, label %135

135:                                              ; preds = %131, %126
  %136 = load i32, ptr %14, align 4
  store i32 %136, ptr %107, align 4
  %137 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %129, ptr %137, align 4
  %138 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 4
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %135
  %142 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %143 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 3
  br label %144

144:                                              ; preds = %154, %141
  %145 = phi i32 [ 0, %141 ], [ %156, %154 ]
  %146 = phi i32 [ %139, %141 ], [ %157, %154 ]
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %2, align 4
  %151 = load i32, ptr %142, align 4
  %152 = add i32 %151, %145
  %153 = load i32, ptr %137, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %150, i32 noundef %152, i32 noundef %153) #11
  br label %154

154:                                              ; preds = %149, %144
  %155 = load i32, ptr %143, align 4
  %156 = add i32 %155, %145
  %157 = lshr i32 %146, 1
  %158 = icmp ult i32 %146, 2
  br i1 %158, label %159, label %144

159:                                              ; preds = %154, %135
  %160 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 1
  store i8 0, ptr %160, align 4
  br label %161

161:                                              ; preds = %159, %131
  %162 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 12
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 60
  %165 = load ptr, ptr %68, align 4
  %166 = getelementptr inbounds %struct.nvkm_fb, ptr %165, i32 0, i32 1, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 4095
  %171 = or i32 %170, 1114112
  %172 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 5
  %173 = getelementptr inbounds %struct.nvkm_device, ptr %167, i32 0, i32 11
  br label %174

174:                                              ; preds = %188, %161
  %175 = phi i32 [ 0, %161 ], [ %189, %188 ]
  %176 = phi i32 [ %171, %161 ], [ %190, %188 ]
  %177 = load i32, ptr %172, align 4
  %178 = shl nuw nsw i32 1, %175
  %179 = and i32 %177, %178
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %174
  %182 = load ptr, ptr %173, align 4
  %183 = getelementptr i8, ptr %182, i32 %176
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %185 = and i32 %184, -61
  %186 = or i32 %185, %164
  %187 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %187, i32 noundef %176, i32 noundef %186) #11
  br label %188

188:                                              ; preds = %181, %174
  %189 = add nuw nsw i32 %175, 1
  %190 = add nuw nsw i32 %176, 4096
  %191 = icmp eq i32 %189, 16
  br i1 %191, label %192, label %174

192:                                              ; preds = %188, %100
  br i1 %8, label %193, label %299

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 2
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %299, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5
  %199 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 6, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = load i32, ptr %198, align 4
  %202 = load i32, ptr %14, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  %206 = load i32, ptr %205, align 4
  br label %217

207:                                              ; preds = %197
  %208 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.nvkm_fb, ptr %209, i32 0, i32 1, i32 1
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.nvkm_device, ptr %211, i32 0, i32 11
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr i8, ptr %213, i32 %195
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %216 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %215, ptr %216, align 4
  br label %217

217:                                              ; preds = %207, %204
  %218 = phi i32 [ %206, %204 ], [ %215, %207 ]
  %219 = and i32 %218, -12289
  %220 = or i32 %219, %200
  %221 = icmp eq i32 %218, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 1
  %224 = load i8, ptr %223, align 4, !range !15
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %251, label %226

226:                                              ; preds = %222, %217
  %227 = load i32, ptr %14, align 4
  store i32 %227, ptr %198, align 4
  %228 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %220, ptr %228, align 4
  %229 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 4
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %249, label %232

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 3
  br label %234

234:                                              ; preds = %244, %232
  %235 = phi i32 [ 0, %232 ], [ %246, %244 ]
  %236 = phi i32 [ %230, %232 ], [ %247, %244 ]
  %237 = and i32 %236, 1
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %234
  %240 = load ptr, ptr %2, align 4
  %241 = load i32, ptr %194, align 4
  %242 = add i32 %241, %235
  %243 = load i32, ptr %228, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %240, i32 noundef %242, i32 noundef %243) #11
  br label %244

244:                                              ; preds = %239, %234
  %245 = load i32, ptr %233, align 4
  %246 = add i32 %245, %235
  %247 = lshr i32 %236, 1
  %248 = icmp ult i32 %236, 2
  br i1 %248, label %249, label %234

249:                                              ; preds = %244, %226
  %250 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 1
  store i8 0, ptr %250, align 4
  br label %251

251:                                              ; preds = %249, %222
  %252 = load i32, ptr %198, align 4
  %253 = load i32, ptr %14, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  %257 = load i32, ptr %256, align 4
  br label %269

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.nvkm_fb, ptr %260, i32 0, i32 1, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr inbounds %struct.nvkm_device, ptr %262, i32 0, i32 11
  %264 = load ptr, ptr %263, align 4
  %265 = load i32, ptr %194, align 4
  %266 = getelementptr i8, ptr %264, i32 %265
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %268 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %267, ptr %268, align 4
  br label %269

269:                                              ; preds = %258, %255
  %270 = phi i32 [ %257, %255 ], [ %267, %258 ]
  %271 = icmp eq i32 %218, %270
  br i1 %271, label %299, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7
  %274 = load i32, ptr %14, align 4
  store i32 %274, ptr %273, align 4
  %275 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 5
  store i32 1, ptr %275, align 4
  %276 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 4
  %277 = load i32, ptr %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %297, label %279

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 2
  %281 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 3
  br label %282

282:                                              ; preds = %292, %279
  %283 = phi i32 [ 0, %279 ], [ %294, %292 ]
  %284 = phi i32 [ %277, %279 ], [ %295, %292 ]
  %285 = and i32 %284, 1
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %282
  %288 = load ptr, ptr %2, align 4
  %289 = load i32, ptr %280, align 4
  %290 = add i32 %289, %283
  %291 = load i32, ptr %275, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %288, i32 noundef %290, i32 noundef %291) #11
  br label %292

292:                                              ; preds = %287, %282
  %293 = load i32, ptr %281, align 4
  %294 = add i32 %293, %283
  %295 = lshr i32 %284, 1
  %296 = icmp ult i32 %284, 2
  br i1 %296, label %297, label %282

297:                                              ; preds = %292, %272
  %298 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %298, i32 noundef 20000) #11
  br label %299

299:                                              ; preds = %297, %269, %193, %192
  %300 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53
  %301 = load i32, ptr %300, align 4
  %302 = load i32, ptr %14, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %306 = load i32, ptr %305, align 4
  br label %319

307:                                              ; preds = %299
  %308 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %309 = load ptr, ptr %308, align 4
  %310 = getelementptr inbounds %struct.nvkm_fb, ptr %309, i32 0, i32 1, i32 1
  %311 = load ptr, ptr %310, align 4
  %312 = getelementptr inbounds %struct.nvkm_device, ptr %311, i32 0, i32 11
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %315 = load i32, ptr %314, align 4
  %316 = getelementptr i8, ptr %313, i32 %315
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %316) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %318 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %317, ptr %318, align 4
  br label %319

319:                                              ; preds = %307, %304
  %320 = phi i32 [ %306, %304 ], [ %317, %307 ]
  %321 = and i32 %320, -2049
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %325 = load i8, ptr %324, align 4, !range !15
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %353, label %327

327:                                              ; preds = %323, %319
  %328 = load i32, ptr %14, align 4
  store i32 %328, ptr %300, align 4
  %329 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %321, ptr %329, align 4
  %330 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %331 = load i32, ptr %330, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %351, label %333

333:                                              ; preds = %327
  %334 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %335 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %336

336:                                              ; preds = %346, %333
  %337 = phi i32 [ 0, %333 ], [ %348, %346 ]
  %338 = phi i32 [ %331, %333 ], [ %349, %346 ]
  %339 = and i32 %338, 1
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %336
  %342 = load ptr, ptr %2, align 4
  %343 = load i32, ptr %334, align 4
  %344 = add i32 %343, %337
  %345 = load i32, ptr %329, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %342, i32 noundef %344, i32 noundef %345) #11
  br label %346

346:                                              ; preds = %341, %336
  %347 = load i32, ptr %335, align 4
  %348 = add i32 %347, %337
  %349 = lshr i32 %338, 1
  %350 = icmp ult i32 %338, 2
  br i1 %350, label %351, label %336

351:                                              ; preds = %346, %327
  %352 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %352, align 4
  br label %353

353:                                              ; preds = %351, %323
  tail call fastcc void @gk104_ram_train(ptr noundef %2, i32 noundef 16908288, i32 noundef 786432)
  %354 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54
  %355 = load i32, ptr %14, align 4
  store i32 %355, ptr %354, align 4
  %356 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 5
  store i32 0, ptr %356, align 4
  %357 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 4
  %358 = load i32, ptr %357, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %378, label %360

360:                                              ; preds = %353
  %361 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 2
  %362 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 3
  br label %363

363:                                              ; preds = %373, %360
  %364 = phi i32 [ 0, %360 ], [ %375, %373 ]
  %365 = phi i32 [ %358, %360 ], [ %376, %373 ]
  %366 = and i32 %365, 1
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %373, label %368

368:                                              ; preds = %363
  %369 = load ptr, ptr %2, align 4
  %370 = load i32, ptr %361, align 4
  %371 = add i32 %370, %364
  %372 = load i32, ptr %356, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %369, i32 noundef %371, i32 noundef %372) #11
  br label %373

373:                                              ; preds = %368, %363
  %374 = load i32, ptr %362, align 4
  %375 = add i32 %374, %364
  %376 = lshr i32 %365, 1
  %377 = icmp ult i32 %365, 2
  br i1 %377, label %378, label %363

378:                                              ; preds = %373, %353
  %379 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %379, i32 noundef 1000) #11
  %380 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55
  %381 = load i32, ptr %14, align 4
  store i32 %381, ptr %380, align 4
  %382 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 5
  store i32 1, ptr %382, align 4
  %383 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 4
  %384 = load i32, ptr %383, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %404, label %386

386:                                              ; preds = %378
  %387 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 2
  %388 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 3
  br label %389

389:                                              ; preds = %399, %386
  %390 = phi i32 [ 0, %386 ], [ %401, %399 ]
  %391 = phi i32 [ %384, %386 ], [ %402, %399 ]
  %392 = and i32 %391, 1
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %399, label %394

394:                                              ; preds = %389
  %395 = load ptr, ptr %2, align 4
  %396 = load i32, ptr %387, align 4
  %397 = add i32 %396, %390
  %398 = load i32, ptr %382, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %395, i32 noundef %397, i32 noundef %398) #11
  br label %399

399:                                              ; preds = %394, %389
  %400 = load i32, ptr %388, align 4
  %401 = add i32 %400, %390
  %402 = lshr i32 %391, 1
  %403 = icmp ult i32 %391, 2
  br i1 %403, label %404, label %389

404:                                              ; preds = %399, %378
  %405 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %405, i32 noundef 1000) #11
  %406 = load i32, ptr %300, align 4
  %407 = load i32, ptr %14, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %412

409:                                              ; preds = %404
  %410 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %411 = load i32, ptr %410, align 4
  br label %424

412:                                              ; preds = %404
  %413 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %414 = load ptr, ptr %413, align 4
  %415 = getelementptr inbounds %struct.nvkm_fb, ptr %414, i32 0, i32 1, i32 1
  %416 = load ptr, ptr %415, align 4
  %417 = getelementptr inbounds %struct.nvkm_device, ptr %416, i32 0, i32 11
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %420 = load i32, ptr %419, align 4
  %421 = getelementptr i8, ptr %418, i32 %420
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %421) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %423 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %422, ptr %423, align 4
  br label %424

424:                                              ; preds = %412, %409
  %425 = phi i32 [ %411, %409 ], [ %422, %412 ]
  %426 = or i32 %425, -2147483648
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %432

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %430 = load i8, ptr %429, align 4, !range !15
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %458, label %432

432:                                              ; preds = %428, %424
  %433 = load i32, ptr %14, align 4
  store i32 %433, ptr %300, align 4
  %434 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %426, ptr %434, align 4
  %435 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %436 = load i32, ptr %435, align 4
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %456, label %438

438:                                              ; preds = %432
  %439 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %440 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %441

441:                                              ; preds = %451, %438
  %442 = phi i32 [ 0, %438 ], [ %453, %451 ]
  %443 = phi i32 [ %436, %438 ], [ %454, %451 ]
  %444 = and i32 %443, 1
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %441
  %447 = load ptr, ptr %2, align 4
  %448 = load i32, ptr %439, align 4
  %449 = add i32 %448, %442
  %450 = load i32, ptr %434, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %447, i32 noundef %449, i32 noundef %450) #11
  br label %451

451:                                              ; preds = %446, %441
  %452 = load i32, ptr %440, align 4
  %453 = add i32 %452, %442
  %454 = lshr i32 %443, 1
  %455 = icmp ult i32 %443, 2
  br i1 %455, label %456, label %441

456:                                              ; preds = %451, %432
  %457 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %457, align 4
  br label %458

458:                                              ; preds = %456, %428
  %459 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56
  %460 = load i32, ptr %14, align 4
  store i32 %460, ptr %459, align 4
  %461 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 5
  store i32 1, ptr %461, align 4
  %462 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 4
  %463 = load i32, ptr %462, align 4
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %485, label %465

465:                                              ; preds = %458
  %466 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 2
  %467 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 3
  br label %468

468:                                              ; preds = %478, %465
  %469 = phi i32 [ 0, %465 ], [ %480, %478 ]
  %470 = phi i32 [ %463, %465 ], [ %481, %478 ]
  %471 = and i32 %470, 1
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %478, label %473

473:                                              ; preds = %468
  %474 = load ptr, ptr %2, align 4
  %475 = load i32, ptr %466, align 4
  %476 = add i32 %475, %469
  %477 = load i32, ptr %461, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %474, i32 noundef %476, i32 noundef %477) #11
  br label %478

478:                                              ; preds = %473, %468
  %479 = load i32, ptr %467, align 4
  %480 = add i32 %479, %469
  %481 = lshr i32 %470, 1
  %482 = icmp ult i32 %470, 2
  br i1 %482, label %483, label %468

483:                                              ; preds = %478
  %484 = load i32, ptr %14, align 4
  br label %485

485:                                              ; preds = %483, %458
  %486 = phi i32 [ %484, %483 ], [ %460, %458 ]
  %487 = load i32, ptr %300, align 4
  %488 = icmp eq i32 %487, %486
  br i1 %488, label %489, label %492

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %491 = load i32, ptr %490, align 4
  br label %504

492:                                              ; preds = %485
  %493 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %494 = load ptr, ptr %493, align 4
  %495 = getelementptr inbounds %struct.nvkm_fb, ptr %494, i32 0, i32 1, i32 1
  %496 = load ptr, ptr %495, align 4
  %497 = getelementptr inbounds %struct.nvkm_device, ptr %496, i32 0, i32 11
  %498 = load ptr, ptr %497, align 4
  %499 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %500 = load i32, ptr %499, align 4
  %501 = getelementptr i8, ptr %498, i32 %500
  %502 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %501) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %503 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %502, ptr %503, align 4
  br label %504

504:                                              ; preds = %492, %489
  %505 = phi i32 [ %491, %489 ], [ %502, %492 ]
  %506 = and i32 %505, 2147483647
  %507 = icmp sgt i32 %505, -1
  br i1 %507, label %508, label %512

508:                                              ; preds = %504
  %509 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %510 = load i8, ptr %509, align 4, !range !15
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %538, label %512

512:                                              ; preds = %508, %504
  %513 = load i32, ptr %14, align 4
  store i32 %513, ptr %300, align 4
  %514 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %506, ptr %514, align 4
  %515 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %516 = load i32, ptr %515, align 4
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %536, label %518

518:                                              ; preds = %512
  %519 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %520 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %521

521:                                              ; preds = %531, %518
  %522 = phi i32 [ 0, %518 ], [ %533, %531 ]
  %523 = phi i32 [ %516, %518 ], [ %534, %531 ]
  %524 = and i32 %523, 1
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %531, label %526

526:                                              ; preds = %521
  %527 = load ptr, ptr %2, align 4
  %528 = load i32, ptr %519, align 4
  %529 = add i32 %528, %522
  %530 = load i32, ptr %514, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %527, i32 noundef %529, i32 noundef %530) #11
  br label %531

531:                                              ; preds = %526, %521
  %532 = load i32, ptr %520, align 4
  %533 = add i32 %532, %522
  %534 = lshr i32 %523, 1
  %535 = icmp ult i32 %523, 2
  br i1 %535, label %536, label %521

536:                                              ; preds = %531, %512
  %537 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %537, align 4
  br label %538

538:                                              ; preds = %536, %508
  %539 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58
  %540 = load i32, ptr %14, align 4
  store i32 %540, ptr %539, align 4
  %541 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 5
  store i32 97, ptr %541, align 4
  %542 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 4
  %543 = load i32, ptr %542, align 4
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %546

545:                                              ; preds = %538
  store i32 -1073741697, ptr %541, align 4
  br label %585

546:                                              ; preds = %538
  %547 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 2
  %548 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 3
  br label %549

549:                                              ; preds = %559, %546
  %550 = phi i32 [ 0, %546 ], [ %561, %559 ]
  %551 = phi i32 [ %543, %546 ], [ %562, %559 ]
  %552 = and i32 %551, 1
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %559, label %554

554:                                              ; preds = %549
  %555 = load ptr, ptr %2, align 4
  %556 = load i32, ptr %547, align 4
  %557 = add i32 %556, %550
  %558 = load i32, ptr %541, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %555, i32 noundef %557, i32 noundef %558) #11
  br label %559

559:                                              ; preds = %554, %549
  %560 = load i32, ptr %548, align 4
  %561 = add i32 %560, %550
  %562 = lshr i32 %551, 1
  %563 = icmp ult i32 %551, 2
  br i1 %563, label %564, label %549

564:                                              ; preds = %559
  %565 = load i32, ptr %542, align 4
  %566 = load i32, ptr %14, align 4
  store i32 %566, ptr %539, align 4
  store i32 -1073741697, ptr %541, align 4
  %567 = icmp eq i32 %565, 0
  br i1 %567, label %585, label %568

568:                                              ; preds = %580, %564
  %569 = phi i32 [ %581, %580 ], [ %560, %564 ]
  %570 = phi i32 [ %582, %580 ], [ 0, %564 ]
  %571 = phi i32 [ %583, %580 ], [ %565, %564 ]
  %572 = and i32 %571, 1
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %580, label %574

574:                                              ; preds = %568
  %575 = load ptr, ptr %2, align 4
  %576 = load i32, ptr %547, align 4
  %577 = add i32 %576, %570
  %578 = load i32, ptr %541, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %575, i32 noundef %577, i32 noundef %578) #11
  %579 = load i32, ptr %548, align 4
  br label %580

580:                                              ; preds = %574, %568
  %581 = phi i32 [ %579, %574 ], [ %569, %568 ]
  %582 = add i32 %581, %570
  %583 = lshr i32 %571, 1
  %584 = icmp ult i32 %571, 2
  br i1 %584, label %585, label %568

585:                                              ; preds = %580, %564, %545
  %586 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %586, i32 noundef 1000) #11
  %587 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 38
  %588 = load i32, ptr %14, align 4
  store i32 %588, ptr %587, align 4
  %589 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 38, i32 5
  store i32 0, ptr %589, align 4
  %590 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 38, i32 4
  %591 = load i32, ptr %590, align 4
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %613, label %593

593:                                              ; preds = %585
  %594 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 38, i32 2
  %595 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 38, i32 3
  br label %596

596:                                              ; preds = %606, %593
  %597 = phi i32 [ 0, %593 ], [ %608, %606 ]
  %598 = phi i32 [ %591, %593 ], [ %609, %606 ]
  %599 = and i32 %598, 1
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %606, label %601

601:                                              ; preds = %596
  %602 = load ptr, ptr %2, align 4
  %603 = load i32, ptr %594, align 4
  %604 = add i32 %603, %597
  %605 = load i32, ptr %589, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %602, i32 noundef %604, i32 noundef %605) #11
  br label %606

606:                                              ; preds = %601, %596
  %607 = load i32, ptr %595, align 4
  %608 = add i32 %607, %597
  %609 = lshr i32 %598, 1
  %610 = icmp ult i32 %598, 2
  br i1 %610, label %611, label %596

611:                                              ; preds = %606
  %612 = load i32, ptr %14, align 4
  br label %613

613:                                              ; preds = %611, %585
  %614 = phi i32 [ %612, %611 ], [ %588, %585 ]
  %615 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 59
  store i32 %614, ptr %615, align 4
  %616 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 59, i32 5
  store i32 0, ptr %616, align 4
  %617 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 59, i32 4
  %618 = load i32, ptr %617, align 4
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %640, label %620

620:                                              ; preds = %613
  %621 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 59, i32 2
  %622 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 59, i32 3
  br label %623

623:                                              ; preds = %633, %620
  %624 = phi i32 [ 0, %620 ], [ %635, %633 ]
  %625 = phi i32 [ %618, %620 ], [ %636, %633 ]
  %626 = and i32 %625, 1
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %633, label %628

628:                                              ; preds = %623
  %629 = load ptr, ptr %2, align 4
  %630 = load i32, ptr %621, align 4
  %631 = add i32 %630, %624
  %632 = load i32, ptr %616, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %629, i32 noundef %631, i32 noundef %632) #11
  br label %633

633:                                              ; preds = %628, %623
  %634 = load i32, ptr %622, align 4
  %635 = add i32 %634, %624
  %636 = lshr i32 %625, 1
  %637 = icmp ult i32 %625, 2
  br i1 %637, label %638, label %623

638:                                              ; preds = %633
  %639 = load i32, ptr %14, align 4
  br label %640

640:                                              ; preds = %638, %613
  %641 = phi i32 [ %639, %638 ], [ %614, %613 ]
  %642 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48
  %643 = load i32, ptr %642, align 4
  %644 = icmp eq i32 %643, %641
  br i1 %644, label %645, label %648

645:                                              ; preds = %640
  %646 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 5
  %647 = load i32, ptr %646, align 4
  br label %660

648:                                              ; preds = %640
  %649 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %650 = load ptr, ptr %649, align 4
  %651 = getelementptr inbounds %struct.nvkm_fb, ptr %650, i32 0, i32 1, i32 1
  %652 = load ptr, ptr %651, align 4
  %653 = getelementptr inbounds %struct.nvkm_device, ptr %652, i32 0, i32 11
  %654 = load ptr, ptr %653, align 4
  %655 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 2
  %656 = load i32, ptr %655, align 4
  %657 = getelementptr i8, ptr %654, i32 %656
  %658 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %657) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %659 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 5
  store i32 %658, ptr %659, align 4
  br label %660

660:                                              ; preds = %648, %645
  %661 = phi i32 [ %647, %645 ], [ %658, %648 ]
  %662 = and i32 %661, 8388608
  %663 = icmp eq i32 %662, 0
  %664 = select i1 %663, i32 -2146760736, i32 -2146498592
  %665 = load i32, ptr %5, align 4
  %666 = lshr i32 %665, 20
  %667 = and i32 %666, 3
  %668 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_ram_calc_gddr5, i32 0, i32 %667
  %669 = load i32, ptr %668, align 4
  %670 = and i32 %664, %669
  %671 = lshr i32 %665, 18
  %672 = and i32 %671, 3
  %673 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_ram_calc_gddr5.10, i32 0, i32 %672
  %674 = load i32, ptr %673, align 4
  %675 = and i32 %670, %674
  %676 = and i32 %665, 8192
  %677 = icmp eq i32 %676, 0
  %678 = select i1 %677, i32 -2146498592, i32 -2096166944
  %679 = shl i32 %665, 1
  %680 = and i32 %679, 8192
  %681 = or i32 %678, %680
  %682 = getelementptr inbounds %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 11, i32 0, i32 1
  %683 = load i32, ptr %682, align 4
  %684 = lshr i32 %683, 5
  %685 = and i32 %684, 16384
  %686 = or i32 %681, %685
  %687 = and i32 %683, 262144
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %691, label %689

689:                                              ; preds = %660
  %690 = or i32 %686, 3
  br label %713

691:                                              ; preds = %660
  %692 = load i32, ptr %642, align 4
  %693 = load i32, ptr %14, align 4
  %694 = icmp eq i32 %692, %693
  br i1 %694, label %708, label %695

695:                                              ; preds = %691
  %696 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %697 = load ptr, ptr %696, align 4
  %698 = getelementptr inbounds %struct.nvkm_fb, ptr %697, i32 0, i32 1, i32 1
  %699 = load ptr, ptr %698, align 4
  %700 = getelementptr inbounds %struct.nvkm_device, ptr %699, i32 0, i32 11
  %701 = load ptr, ptr %700, align 4
  %702 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 2
  %703 = load i32, ptr %702, align 4
  %704 = getelementptr i8, ptr %701, i32 %703
  %705 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %704) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %706 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 5
  store i32 %705, ptr %706, align 4
  %707 = and i32 %705, 8388608
  br label %708

708:                                              ; preds = %695, %691
  %709 = phi i32 [ %707, %695 ], [ %662, %691 ]
  %710 = icmp eq i32 %709, 0
  %711 = select i1 %710, i32 872415232, i32 1946157056
  %712 = or i32 %711, %686
  br label %713

713:                                              ; preds = %708, %689
  %714 = phi i32 [ %690, %689 ], [ %712, %708 ]
  %715 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60
  %716 = load i32, ptr %715, align 4
  %717 = load i32, ptr %14, align 4
  %718 = icmp eq i32 %716, %717
  br i1 %718, label %719, label %722

719:                                              ; preds = %713
  %720 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  %721 = load i32, ptr %720, align 4
  br label %734

722:                                              ; preds = %713
  %723 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %724 = load ptr, ptr %723, align 4
  %725 = getelementptr inbounds %struct.nvkm_fb, ptr %724, i32 0, i32 1, i32 1
  %726 = load ptr, ptr %725, align 4
  %727 = getelementptr inbounds %struct.nvkm_device, ptr %726, i32 0, i32 11
  %728 = load ptr, ptr %727, align 4
  %729 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 2
  %730 = load i32, ptr %729, align 4
  %731 = getelementptr i8, ptr %728, i32 %730
  %732 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %731) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %733 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  store i32 %732, ptr %733, align 4
  br label %734

734:                                              ; preds = %722, %719
  %735 = phi i32 [ %721, %719 ], [ %732, %722 ]
  %736 = xor i32 %714, -1
  %737 = and i32 %735, %736
  %738 = or i32 %737, %675
  %739 = icmp eq i32 %735, %738
  br i1 %739, label %740, label %744

740:                                              ; preds = %734
  %741 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 1
  %742 = load i8, ptr %741, align 4, !range !15
  %743 = icmp eq i8 %742, 0
  br i1 %743, label %770, label %744

744:                                              ; preds = %740, %734
  %745 = load i32, ptr %14, align 4
  store i32 %745, ptr %715, align 4
  %746 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  store i32 %738, ptr %746, align 4
  %747 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 4
  %748 = load i32, ptr %747, align 4
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %768, label %750

750:                                              ; preds = %744
  %751 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 2
  %752 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 3
  br label %753

753:                                              ; preds = %763, %750
  %754 = phi i32 [ 0, %750 ], [ %765, %763 ]
  %755 = phi i32 [ %748, %750 ], [ %766, %763 ]
  %756 = and i32 %755, 1
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %763, label %758

758:                                              ; preds = %753
  %759 = load ptr, ptr %2, align 4
  %760 = load i32, ptr %751, align 4
  %761 = add i32 %760, %754
  %762 = load i32, ptr %746, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %759, i32 noundef %761, i32 noundef %762) #11
  br label %763

763:                                              ; preds = %758, %753
  %764 = load i32, ptr %752, align 4
  %765 = add i32 %764, %754
  %766 = lshr i32 %755, 1
  %767 = icmp ult i32 %755, 2
  br i1 %767, label %768, label %753

768:                                              ; preds = %763, %744
  %769 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 1
  store i8 0, ptr %769, align 4
  br label %770

770:                                              ; preds = %768, %740
  %771 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15
  %772 = load i32, ptr %771, align 4
  %773 = load i32, ptr %14, align 4
  %774 = icmp eq i32 %772, %773
  br i1 %774, label %775, label %778

775:                                              ; preds = %770
  %776 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  %777 = load i32, ptr %776, align 4
  br label %790

778:                                              ; preds = %770
  %779 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %780 = load ptr, ptr %779, align 4
  %781 = getelementptr inbounds %struct.nvkm_fb, ptr %780, i32 0, i32 1, i32 1
  %782 = load ptr, ptr %781, align 4
  %783 = getelementptr inbounds %struct.nvkm_device, ptr %782, i32 0, i32 11
  %784 = load ptr, ptr %783, align 4
  %785 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 2
  %786 = load i32, ptr %785, align 4
  %787 = getelementptr i8, ptr %784, i32 %786
  %788 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %787) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %789 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  store i32 %788, ptr %789, align 4
  br label %790

790:                                              ; preds = %778, %775
  %791 = phi i32 [ %777, %775 ], [ %788, %778 ]
  %792 = and i32 %791, -65537
  %793 = icmp eq i32 %791, %792
  br i1 %793, label %794, label %798

794:                                              ; preds = %790
  %795 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 1
  %796 = load i8, ptr %795, align 4, !range !15
  %797 = icmp eq i8 %796, 0
  br i1 %797, label %824, label %798

798:                                              ; preds = %794, %790
  %799 = load i32, ptr %14, align 4
  store i32 %799, ptr %771, align 4
  %800 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  store i32 %792, ptr %800, align 4
  %801 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 4
  %802 = load i32, ptr %801, align 4
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %822, label %804

804:                                              ; preds = %798
  %805 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 2
  %806 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 3
  br label %807

807:                                              ; preds = %817, %804
  %808 = phi i32 [ 0, %804 ], [ %819, %817 ]
  %809 = phi i32 [ %802, %804 ], [ %820, %817 ]
  %810 = and i32 %809, 1
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %817, label %812

812:                                              ; preds = %807
  %813 = load ptr, ptr %2, align 4
  %814 = load i32, ptr %805, align 4
  %815 = add i32 %814, %808
  %816 = load i32, ptr %800, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %813, i32 noundef %815, i32 noundef %816) #11
  br label %817

817:                                              ; preds = %812, %807
  %818 = load i32, ptr %806, align 4
  %819 = add i32 %818, %808
  %820 = lshr i32 %809, 1
  %821 = icmp ult i32 %809, 2
  br i1 %821, label %822, label %807

822:                                              ; preds = %817, %798
  %823 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 1
  store i8 0, ptr %823, align 4
  br label %824

824:                                              ; preds = %822, %794
  %825 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 7
  %826 = load i32, ptr %825, align 4
  %827 = icmp eq i32 %826, 2
  %828 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 8
  %829 = load i32, ptr %828, align 8
  %830 = icmp eq i32 %829, 2
  br i1 %827, label %831, label %1210

831:                                              ; preds = %824
  br i1 %830, label %1212, label %832

832:                                              ; preds = %831
  %833 = load i32, ptr %12, align 4
  %834 = load i32, ptr %14, align 4
  %835 = icmp eq i32 %833, %834
  br i1 %835, label %836, label %839

836:                                              ; preds = %832
  %837 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  %838 = load i32, ptr %837, align 4
  br label %851

839:                                              ; preds = %832
  %840 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %841 = load ptr, ptr %840, align 4
  %842 = getelementptr inbounds %struct.nvkm_fb, ptr %841, i32 0, i32 1, i32 1
  %843 = load ptr, ptr %842, align 4
  %844 = getelementptr inbounds %struct.nvkm_device, ptr %843, i32 0, i32 11
  %845 = load ptr, ptr %844, align 4
  %846 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %847 = load i32, ptr %846, align 4
  %848 = getelementptr i8, ptr %845, i32 %847
  %849 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %848) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %850 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %849, ptr %850, align 4
  br label %851

851:                                              ; preds = %839, %836
  %852 = phi i32 [ %838, %836 ], [ %849, %839 ]
  %853 = and i32 %852, -524289
  %854 = icmp eq i32 %852, %853
  br i1 %854, label %855, label %859

855:                                              ; preds = %851
  %856 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  %857 = load i8, ptr %856, align 4, !range !15
  %858 = icmp eq i8 %857, 0
  br i1 %858, label %885, label %859

859:                                              ; preds = %855, %851
  %860 = load i32, ptr %14, align 4
  store i32 %860, ptr %12, align 4
  %861 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %853, ptr %861, align 4
  %862 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 4
  %863 = load i32, ptr %862, align 4
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %883, label %865

865:                                              ; preds = %859
  %866 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %867 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 3
  br label %868

868:                                              ; preds = %878, %865
  %869 = phi i32 [ 0, %865 ], [ %880, %878 ]
  %870 = phi i32 [ %863, %865 ], [ %881, %878 ]
  %871 = and i32 %870, 1
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %878, label %873

873:                                              ; preds = %868
  %874 = load ptr, ptr %2, align 4
  %875 = load i32, ptr %866, align 4
  %876 = add i32 %875, %869
  %877 = load i32, ptr %861, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %874, i32 noundef %876, i32 noundef %877) #11
  br label %878

878:                                              ; preds = %873, %868
  %879 = load i32, ptr %867, align 4
  %880 = add i32 %879, %869
  %881 = lshr i32 %870, 1
  %882 = icmp ult i32 %870, 2
  br i1 %882, label %883, label %868

883:                                              ; preds = %878, %859
  %884 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  store i8 0, ptr %884, align 4
  br label %885

885:                                              ; preds = %883, %855
  %886 = load i32, ptr %300, align 4
  %887 = load i32, ptr %14, align 4
  %888 = icmp eq i32 %886, %887
  br i1 %888, label %889, label %892

889:                                              ; preds = %885
  %890 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %891 = load i32, ptr %890, align 4
  br label %904

892:                                              ; preds = %885
  %893 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %894 = load ptr, ptr %893, align 4
  %895 = getelementptr inbounds %struct.nvkm_fb, ptr %894, i32 0, i32 1, i32 1
  %896 = load ptr, ptr %895, align 4
  %897 = getelementptr inbounds %struct.nvkm_device, ptr %896, i32 0, i32 11
  %898 = load ptr, ptr %897, align 4
  %899 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %900 = load i32, ptr %899, align 4
  %901 = getelementptr i8, ptr %898, i32 %900
  %902 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %901) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %903 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %902, ptr %903, align 4
  br label %904

904:                                              ; preds = %892, %889
  %905 = phi i32 [ %891, %889 ], [ %902, %892 ]
  %906 = and i32 %905, -402685953
  %907 = or i32 %906, 32768
  %908 = icmp eq i32 %905, %907
  br i1 %908, label %909, label %913

909:                                              ; preds = %904
  %910 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %911 = load i8, ptr %910, align 4, !range !15
  %912 = icmp eq i8 %911, 0
  br i1 %912, label %939, label %913

913:                                              ; preds = %909, %904
  %914 = load i32, ptr %14, align 4
  store i32 %914, ptr %300, align 4
  %915 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %907, ptr %915, align 4
  %916 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %917 = load i32, ptr %916, align 4
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %937, label %919

919:                                              ; preds = %913
  %920 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %921 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %922

922:                                              ; preds = %932, %919
  %923 = phi i32 [ 0, %919 ], [ %934, %932 ]
  %924 = phi i32 [ %917, %919 ], [ %935, %932 ]
  %925 = and i32 %924, 1
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %932, label %927

927:                                              ; preds = %922
  %928 = load ptr, ptr %2, align 4
  %929 = load i32, ptr %920, align 4
  %930 = add i32 %929, %923
  %931 = load i32, ptr %915, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %928, i32 noundef %930, i32 noundef %931) #11
  br label %932

932:                                              ; preds = %927, %922
  %933 = load i32, ptr %921, align 4
  %934 = add i32 %933, %923
  %935 = lshr i32 %924, 1
  %936 = icmp ult i32 %924, 2
  br i1 %936, label %937, label %922

937:                                              ; preds = %932, %913
  %938 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %938, align 4
  br label %939

939:                                              ; preds = %937, %909
  %940 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46
  %941 = load i32, ptr %940, align 4
  %942 = load i32, ptr %14, align 4
  %943 = icmp eq i32 %941, %942
  br i1 %943, label %944, label %947

944:                                              ; preds = %939
  %945 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  %946 = load i32, ptr %945, align 4
  br label %959

947:                                              ; preds = %939
  %948 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %949 = load ptr, ptr %948, align 4
  %950 = getelementptr inbounds %struct.nvkm_fb, ptr %949, i32 0, i32 1, i32 1
  %951 = load ptr, ptr %950, align 4
  %952 = getelementptr inbounds %struct.nvkm_device, ptr %951, i32 0, i32 11
  %953 = load ptr, ptr %952, align 4
  %954 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 2
  %955 = load i32, ptr %954, align 4
  %956 = getelementptr i8, ptr %953, i32 %955
  %957 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %956) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %958 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  store i32 %957, ptr %958, align 4
  br label %959

959:                                              ; preds = %947, %944
  %960 = phi i32 [ %946, %944 ], [ %957, %947 ]
  %961 = or i32 %960, 4
  %962 = icmp eq i32 %960, %961
  br i1 %962, label %963, label %967

963:                                              ; preds = %959
  %964 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 1
  %965 = load i8, ptr %964, align 4, !range !15
  %966 = icmp eq i8 %965, 0
  br i1 %966, label %993, label %967

967:                                              ; preds = %963, %959
  %968 = load i32, ptr %14, align 4
  store i32 %968, ptr %940, align 4
  %969 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  store i32 %961, ptr %969, align 4
  %970 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 4
  %971 = load i32, ptr %970, align 4
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %991, label %973

973:                                              ; preds = %967
  %974 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 2
  %975 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 3
  br label %976

976:                                              ; preds = %986, %973
  %977 = phi i32 [ 0, %973 ], [ %988, %986 ]
  %978 = phi i32 [ %971, %973 ], [ %989, %986 ]
  %979 = and i32 %978, 1
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %986, label %981

981:                                              ; preds = %976
  %982 = load ptr, ptr %2, align 4
  %983 = load i32, ptr %974, align 4
  %984 = add i32 %983, %977
  %985 = load i32, ptr %969, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %982, i32 noundef %984, i32 noundef %985) #11
  br label %986

986:                                              ; preds = %981, %976
  %987 = load i32, ptr %975, align 4
  %988 = add i32 %987, %977
  %989 = lshr i32 %978, 1
  %990 = icmp ult i32 %978, 2
  br i1 %990, label %991, label %976

991:                                              ; preds = %986, %967
  %992 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 1
  store i8 0, ptr %992, align 4
  br label %993

993:                                              ; preds = %991, %963
  %994 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44
  %995 = load i32, ptr %994, align 4
  %996 = load i32, ptr %14, align 4
  %997 = icmp eq i32 %995, %996
  br i1 %997, label %998, label %1001

998:                                              ; preds = %993
  %999 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %1000 = load i32, ptr %999, align 4
  br label %1013

1001:                                             ; preds = %993
  %1002 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1003 = load ptr, ptr %1002, align 4
  %1004 = getelementptr inbounds %struct.nvkm_fb, ptr %1003, i32 0, i32 1, i32 1
  %1005 = load ptr, ptr %1004, align 4
  %1006 = getelementptr inbounds %struct.nvkm_device, ptr %1005, i32 0, i32 11
  %1007 = load ptr, ptr %1006, align 4
  %1008 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %1009 = load i32, ptr %1008, align 4
  %1010 = getelementptr i8, ptr %1007, i32 %1009
  %1011 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1010) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1012 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %1011, ptr %1012, align 4
  br label %1013

1013:                                             ; preds = %1001, %998
  %1014 = phi i32 [ %1000, %998 ], [ %1011, %1001 ]
  %1015 = and i32 %1014, -17072145
  %1016 = or i32 %1015, 17039376
  %1017 = icmp eq i32 %1014, %1016
  br i1 %1017, label %1018, label %1022

1018:                                             ; preds = %1013
  %1019 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  %1020 = load i8, ptr %1019, align 4, !range !15
  %1021 = icmp eq i8 %1020, 0
  br i1 %1021, label %1048, label %1022

1022:                                             ; preds = %1018, %1013
  %1023 = load i32, ptr %14, align 4
  store i32 %1023, ptr %994, align 4
  %1024 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %1016, ptr %1024, align 4
  %1025 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %1026 = load i32, ptr %1025, align 4
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1046, label %1028

1028:                                             ; preds = %1022
  %1029 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %1030 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %1031

1031:                                             ; preds = %1041, %1028
  %1032 = phi i32 [ 0, %1028 ], [ %1043, %1041 ]
  %1033 = phi i32 [ %1026, %1028 ], [ %1044, %1041 ]
  %1034 = and i32 %1033, 1
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1041, label %1036

1036:                                             ; preds = %1031
  %1037 = load ptr, ptr %2, align 4
  %1038 = load i32, ptr %1029, align 4
  %1039 = add i32 %1038, %1032
  %1040 = load i32, ptr %1024, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1037, i32 noundef %1039, i32 noundef %1040) #11
  br label %1041

1041:                                             ; preds = %1036, %1031
  %1042 = load i32, ptr %1030, align 4
  %1043 = add i32 %1042, %1032
  %1044 = lshr i32 %1033, 1
  %1045 = icmp ult i32 %1033, 2
  br i1 %1045, label %1046, label %1031

1046:                                             ; preds = %1041, %1022
  %1047 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  store i8 0, ptr %1047, align 4
  br label %1048

1048:                                             ; preds = %1046, %1018
  %1049 = load i32, ptr %994, align 4
  %1050 = load i32, ptr %14, align 4
  %1051 = icmp eq i32 %1049, %1050
  br i1 %1051, label %1052, label %1055

1052:                                             ; preds = %1048
  %1053 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %1054 = load i32, ptr %1053, align 4
  br label %1067

1055:                                             ; preds = %1048
  %1056 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1057 = load ptr, ptr %1056, align 4
  %1058 = getelementptr inbounds %struct.nvkm_fb, ptr %1057, i32 0, i32 1, i32 1
  %1059 = load ptr, ptr %1058, align 4
  %1060 = getelementptr inbounds %struct.nvkm_device, ptr %1059, i32 0, i32 11
  %1061 = load ptr, ptr %1060, align 4
  %1062 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %1063 = load i32, ptr %1062, align 4
  %1064 = getelementptr i8, ptr %1061, i32 %1063
  %1065 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1064) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1066 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %1065, ptr %1066, align 4
  br label %1067

1067:                                             ; preds = %1055, %1052
  %1068 = phi i32 [ %1054, %1052 ], [ %1065, %1055 ]
  %1069 = and i32 %1068, -16777217
  %1070 = icmp eq i32 %1068, %1069
  br i1 %1070, label %1071, label %1075

1071:                                             ; preds = %1067
  %1072 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  %1073 = load i8, ptr %1072, align 4, !range !15
  %1074 = icmp eq i8 %1073, 0
  br i1 %1074, label %1101, label %1075

1075:                                             ; preds = %1071, %1067
  %1076 = load i32, ptr %14, align 4
  store i32 %1076, ptr %994, align 4
  %1077 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %1069, ptr %1077, align 4
  %1078 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %1079 = load i32, ptr %1078, align 4
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1099, label %1081

1081:                                             ; preds = %1075
  %1082 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %1083 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %1084

1084:                                             ; preds = %1094, %1081
  %1085 = phi i32 [ 0, %1081 ], [ %1096, %1094 ]
  %1086 = phi i32 [ %1079, %1081 ], [ %1097, %1094 ]
  %1087 = and i32 %1086, 1
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1094, label %1089

1089:                                             ; preds = %1084
  %1090 = load ptr, ptr %2, align 4
  %1091 = load i32, ptr %1082, align 4
  %1092 = add i32 %1091, %1085
  %1093 = load i32, ptr %1077, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1090, i32 noundef %1092, i32 noundef %1093) #11
  br label %1094

1094:                                             ; preds = %1089, %1084
  %1095 = load i32, ptr %1083, align 4
  %1096 = add i32 %1095, %1085
  %1097 = lshr i32 %1086, 1
  %1098 = icmp ult i32 %1086, 2
  br i1 %1098, label %1099, label %1084

1099:                                             ; preds = %1094, %1075
  %1100 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  store i8 0, ptr %1100, align 4
  br label %1101

1101:                                             ; preds = %1099, %1071
  tail call fastcc void @r1373f4_init(ptr noundef %2)
  %1102 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61
  %1103 = load i32, ptr %1102, align 4
  %1104 = load i32, ptr %14, align 4
  %1105 = icmp eq i32 %1103, %1104
  br i1 %1105, label %1106, label %1109

1106:                                             ; preds = %1101
  %1107 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 5
  %1108 = load i32, ptr %1107, align 4
  br label %1121

1109:                                             ; preds = %1101
  %1110 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1111 = load ptr, ptr %1110, align 4
  %1112 = getelementptr inbounds %struct.nvkm_fb, ptr %1111, i32 0, i32 1, i32 1
  %1113 = load ptr, ptr %1112, align 4
  %1114 = getelementptr inbounds %struct.nvkm_device, ptr %1113, i32 0, i32 11
  %1115 = load ptr, ptr %1114, align 4
  %1116 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 2
  %1117 = load i32, ptr %1116, align 4
  %1118 = getelementptr i8, ptr %1115, i32 %1117
  %1119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1118) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1120 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 5
  store i32 %1119, ptr %1120, align 4
  br label %1121

1121:                                             ; preds = %1109, %1106
  %1122 = phi i32 [ %1108, %1106 ], [ %1119, %1109 ]
  %1123 = and i32 %1122, -4
  %1124 = or i32 %1123, 1
  %1125 = icmp eq i32 %1122, %1124
  br i1 %1125, label %1126, label %1130

1126:                                             ; preds = %1121
  %1127 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 1
  %1128 = load i8, ptr %1127, align 4, !range !15
  %1129 = icmp eq i8 %1128, 0
  br i1 %1129, label %1156, label %1130

1130:                                             ; preds = %1126, %1121
  %1131 = load i32, ptr %14, align 4
  store i32 %1131, ptr %1102, align 4
  %1132 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 5
  store i32 %1124, ptr %1132, align 4
  %1133 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 4
  %1134 = load i32, ptr %1133, align 4
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1154, label %1136

1136:                                             ; preds = %1130
  %1137 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 2
  %1138 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 3
  br label %1139

1139:                                             ; preds = %1149, %1136
  %1140 = phi i32 [ 0, %1136 ], [ %1151, %1149 ]
  %1141 = phi i32 [ %1134, %1136 ], [ %1152, %1149 ]
  %1142 = and i32 %1141, 1
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1149, label %1144

1144:                                             ; preds = %1139
  %1145 = load ptr, ptr %2, align 4
  %1146 = load i32, ptr %1137, align 4
  %1147 = add i32 %1146, %1140
  %1148 = load i32, ptr %1132, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1145, i32 noundef %1147, i32 noundef %1148) #11
  br label %1149

1149:                                             ; preds = %1144, %1139
  %1150 = load i32, ptr %1138, align 4
  %1151 = add i32 %1150, %1140
  %1152 = lshr i32 %1141, 1
  %1153 = icmp ult i32 %1141, 2
  br i1 %1153, label %1154, label %1139

1154:                                             ; preds = %1149, %1130
  %1155 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 1
  store i8 0, ptr %1155, align 4
  br label %1156

1156:                                             ; preds = %1154, %1126
  tail call fastcc void @r1373f4_fini(ptr noundef %2)
  %1157 = load i32, ptr %994, align 4
  %1158 = load i32, ptr %14, align 4
  %1159 = icmp eq i32 %1157, %1158
  br i1 %1159, label %1160, label %1163

1160:                                             ; preds = %1156
  %1161 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %1162 = load i32, ptr %1161, align 4
  br label %1175

1163:                                             ; preds = %1156
  %1164 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1165 = load ptr, ptr %1164, align 4
  %1166 = getelementptr inbounds %struct.nvkm_fb, ptr %1165, i32 0, i32 1, i32 1
  %1167 = load ptr, ptr %1166, align 4
  %1168 = getelementptr inbounds %struct.nvkm_device, ptr %1167, i32 0, i32 11
  %1169 = load ptr, ptr %1168, align 4
  %1170 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %1171 = load i32, ptr %1170, align 4
  %1172 = getelementptr i8, ptr %1169, i32 %1171
  %1173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1172) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1174 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %1173, ptr %1174, align 4
  br label %1175

1175:                                             ; preds = %1163, %1160
  %1176 = phi i32 [ %1162, %1160 ], [ %1173, %1163 ]
  %1177 = and i32 %1176, -14942210
  %1178 = or i32 %1177, 2359297
  %1179 = icmp eq i32 %1176, %1178
  br i1 %1179, label %1180, label %1184

1180:                                             ; preds = %1175
  %1181 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  %1182 = load i8, ptr %1181, align 4, !range !15
  %1183 = icmp eq i8 %1182, 0
  br i1 %1183, label %1212, label %1184

1184:                                             ; preds = %1180, %1175
  %1185 = load i32, ptr %14, align 4
  store i32 %1185, ptr %994, align 4
  %1186 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %1178, ptr %1186, align 4
  %1187 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %1188 = load i32, ptr %1187, align 4
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1208, label %1190

1190:                                             ; preds = %1184
  %1191 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %1192 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %1193

1193:                                             ; preds = %1203, %1190
  %1194 = phi i32 [ 0, %1190 ], [ %1205, %1203 ]
  %1195 = phi i32 [ %1188, %1190 ], [ %1206, %1203 ]
  %1196 = and i32 %1195, 1
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1203, label %1198

1198:                                             ; preds = %1193
  %1199 = load ptr, ptr %2, align 4
  %1200 = load i32, ptr %1191, align 4
  %1201 = add i32 %1200, %1194
  %1202 = load i32, ptr %1186, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1199, i32 noundef %1201, i32 noundef %1202) #11
  br label %1203

1203:                                             ; preds = %1198, %1193
  %1204 = load i32, ptr %1192, align 4
  %1205 = add i32 %1204, %1194
  %1206 = lshr i32 %1195, 1
  %1207 = icmp ult i32 %1195, 2
  br i1 %1207, label %1208, label %1193

1208:                                             ; preds = %1203, %1184
  %1209 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  store i8 0, ptr %1209, align 4
  br label %1212

1210:                                             ; preds = %824
  br i1 %830, label %1212, label %1211

1211:                                             ; preds = %1210
  tail call fastcc void @r1373f4_init(ptr noundef %2)
  tail call fastcc void @r1373f4_fini(ptr noundef %2)
  br label %1212

1212:                                             ; preds = %1211, %1210, %1208, %1180, %831
  %1213 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 2
  %1214 = load i32, ptr %1213, align 4
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1318, label %1216

1216:                                             ; preds = %1212
  %1217 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3
  %1218 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 4, i32 %11
  %1219 = load i32, ptr %1218, align 4
  %1220 = load i32, ptr %1217, align 4
  %1221 = load i32, ptr %14, align 4
  %1222 = icmp eq i32 %1220, %1221
  br i1 %1222, label %1223, label %1226

1223:                                             ; preds = %1216
  %1224 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 5
  %1225 = load i32, ptr %1224, align 4
  br label %1236

1226:                                             ; preds = %1216
  %1227 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1228 = load ptr, ptr %1227, align 4
  %1229 = getelementptr inbounds %struct.nvkm_fb, ptr %1228, i32 0, i32 1, i32 1
  %1230 = load ptr, ptr %1229, align 4
  %1231 = getelementptr inbounds %struct.nvkm_device, ptr %1230, i32 0, i32 11
  %1232 = load ptr, ptr %1231, align 4
  %1233 = getelementptr i8, ptr %1232, i32 %1214
  %1234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1233) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1235 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 5
  store i32 %1234, ptr %1235, align 4
  br label %1236

1236:                                             ; preds = %1226, %1223
  %1237 = phi i32 [ %1225, %1223 ], [ %1234, %1226 ]
  %1238 = and i32 %1237, -12289
  %1239 = or i32 %1238, %1219
  %1240 = icmp eq i32 %1237, %1239
  br i1 %1240, label %1241, label %1245

1241:                                             ; preds = %1236
  %1242 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 1
  %1243 = load i8, ptr %1242, align 4, !range !15
  %1244 = icmp eq i8 %1243, 0
  br i1 %1244, label %1270, label %1245

1245:                                             ; preds = %1241, %1236
  %1246 = load i32, ptr %14, align 4
  store i32 %1246, ptr %1217, align 4
  %1247 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 5
  store i32 %1239, ptr %1247, align 4
  %1248 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 4
  %1249 = load i32, ptr %1248, align 4
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1268, label %1251

1251:                                             ; preds = %1245
  %1252 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 3
  br label %1253

1253:                                             ; preds = %1263, %1251
  %1254 = phi i32 [ 0, %1251 ], [ %1265, %1263 ]
  %1255 = phi i32 [ %1249, %1251 ], [ %1266, %1263 ]
  %1256 = and i32 %1255, 1
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1263, label %1258

1258:                                             ; preds = %1253
  %1259 = load ptr, ptr %2, align 4
  %1260 = load i32, ptr %1213, align 4
  %1261 = add i32 %1260, %1254
  %1262 = load i32, ptr %1247, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1259, i32 noundef %1261, i32 noundef %1262) #11
  br label %1263

1263:                                             ; preds = %1258, %1253
  %1264 = load i32, ptr %1252, align 4
  %1265 = add i32 %1264, %1254
  %1266 = lshr i32 %1255, 1
  %1267 = icmp ult i32 %1255, 2
  br i1 %1267, label %1268, label %1253

1268:                                             ; preds = %1263, %1245
  %1269 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 1
  store i8 0, ptr %1269, align 4
  br label %1270

1270:                                             ; preds = %1268, %1241
  %1271 = load i32, ptr %1217, align 4
  %1272 = load i32, ptr %14, align 4
  %1273 = icmp eq i32 %1271, %1272
  br i1 %1273, label %1274, label %1277

1274:                                             ; preds = %1270
  %1275 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 5
  %1276 = load i32, ptr %1275, align 4
  br label %1288

1277:                                             ; preds = %1270
  %1278 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1279 = load ptr, ptr %1278, align 4
  %1280 = getelementptr inbounds %struct.nvkm_fb, ptr %1279, i32 0, i32 1, i32 1
  %1281 = load ptr, ptr %1280, align 4
  %1282 = getelementptr inbounds %struct.nvkm_device, ptr %1281, i32 0, i32 11
  %1283 = load ptr, ptr %1282, align 4
  %1284 = load i32, ptr %1213, align 4
  %1285 = getelementptr i8, ptr %1283, i32 %1284
  %1286 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1285) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1287 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 3, i32 5
  store i32 %1286, ptr %1287, align 4
  br label %1288

1288:                                             ; preds = %1277, %1274
  %1289 = phi i32 [ %1276, %1274 ], [ %1286, %1277 ]
  %1290 = icmp eq i32 %1237, %1289
  br i1 %1290, label %1318, label %1291

1291:                                             ; preds = %1288
  %1292 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7
  %1293 = load i32, ptr %14, align 4
  store i32 %1293, ptr %1292, align 4
  %1294 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 5
  store i32 1, ptr %1294, align 4
  %1295 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 4
  %1296 = load i32, ptr %1295, align 4
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1316, label %1298

1298:                                             ; preds = %1291
  %1299 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 2
  %1300 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 3
  br label %1301

1301:                                             ; preds = %1311, %1298
  %1302 = phi i32 [ 0, %1298 ], [ %1313, %1311 ]
  %1303 = phi i32 [ %1296, %1298 ], [ %1314, %1311 ]
  %1304 = and i32 %1303, 1
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1311, label %1306

1306:                                             ; preds = %1301
  %1307 = load ptr, ptr %2, align 4
  %1308 = load i32, ptr %1299, align 4
  %1309 = add i32 %1308, %1302
  %1310 = load i32, ptr %1294, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1307, i32 noundef %1309, i32 noundef %1310) #11
  br label %1311

1311:                                             ; preds = %1306, %1301
  %1312 = load i32, ptr %1300, align 4
  %1313 = add i32 %1312, %1302
  %1314 = lshr i32 %1303, 1
  %1315 = icmp ult i32 %1303, 2
  br i1 %1315, label %1316, label %1301

1316:                                             ; preds = %1311, %1291
  %1317 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %1317, i32 noundef 64000) #11
  br label %1318

1318:                                             ; preds = %1316, %1288, %1212
  %1319 = load i32, ptr %5, align 4
  %1320 = and i32 %1319, 4096
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1322, label %1326

1322:                                             ; preds = %1318
  %1323 = load i32, ptr %682, align 4
  %1324 = and i32 %1323, 524288
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1381, label %1326

1326:                                             ; preds = %1322, %1318
  %1327 = load i32, ptr %771, align 4
  %1328 = load i32, ptr %14, align 4
  %1329 = icmp eq i32 %1327, %1328
  br i1 %1329, label %1330, label %1333

1330:                                             ; preds = %1326
  %1331 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  %1332 = load i32, ptr %1331, align 4
  br label %1345

1333:                                             ; preds = %1326
  %1334 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1335 = load ptr, ptr %1334, align 4
  %1336 = getelementptr inbounds %struct.nvkm_fb, ptr %1335, i32 0, i32 1, i32 1
  %1337 = load ptr, ptr %1336, align 4
  %1338 = getelementptr inbounds %struct.nvkm_device, ptr %1337, i32 0, i32 11
  %1339 = load ptr, ptr %1338, align 4
  %1340 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 2
  %1341 = load i32, ptr %1340, align 4
  %1342 = getelementptr i8, ptr %1339, i32 %1341
  %1343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1342) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1344 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  store i32 %1343, ptr %1344, align 4
  br label %1345

1345:                                             ; preds = %1333, %1330
  %1346 = phi i32 [ %1332, %1330 ], [ %1343, %1333 ]
  %1347 = or i32 %1346, 65536
  %1348 = icmp eq i32 %1346, %1347
  br i1 %1348, label %1349, label %1353

1349:                                             ; preds = %1345
  %1350 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 1
  %1351 = load i8, ptr %1350, align 4, !range !15
  %1352 = icmp eq i8 %1351, 0
  br i1 %1352, label %1379, label %1353

1353:                                             ; preds = %1349, %1345
  %1354 = load i32, ptr %14, align 4
  store i32 %1354, ptr %771, align 4
  %1355 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  store i32 %1347, ptr %1355, align 4
  %1356 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 4
  %1357 = load i32, ptr %1356, align 4
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1377, label %1359

1359:                                             ; preds = %1353
  %1360 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 2
  %1361 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 3
  br label %1362

1362:                                             ; preds = %1372, %1359
  %1363 = phi i32 [ 0, %1359 ], [ %1374, %1372 ]
  %1364 = phi i32 [ %1357, %1359 ], [ %1375, %1372 ]
  %1365 = and i32 %1364, 1
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1372, label %1367

1367:                                             ; preds = %1362
  %1368 = load ptr, ptr %2, align 4
  %1369 = load i32, ptr %1360, align 4
  %1370 = add i32 %1369, %1363
  %1371 = load i32, ptr %1355, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1368, i32 noundef %1370, i32 noundef %1371) #11
  br label %1372

1372:                                             ; preds = %1367, %1362
  %1373 = load i32, ptr %1361, align 4
  %1374 = add i32 %1373, %1363
  %1375 = lshr i32 %1364, 1
  %1376 = icmp ult i32 %1364, 2
  br i1 %1376, label %1377, label %1362

1377:                                             ; preds = %1372, %1353
  %1378 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 15, i32 1
  store i8 0, ptr %1378, align 4
  br label %1379

1379:                                             ; preds = %1377, %1349
  %1380 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %1380, i32 noundef 20000) #11
  br label %1381

1381:                                             ; preds = %1379, %1322
  %1382 = load i32, ptr %825, align 4
  %1383 = icmp eq i32 %1382, 2
  %1384 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 8
  %1385 = load i32, ptr %1384, align 8
  %1386 = icmp eq i32 %1385, 2
  br i1 %1383, label %1658, label %1387

1387:                                             ; preds = %1381
  br i1 %1386, label %1388, label %1714

1388:                                             ; preds = %1387
  %1389 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46
  %1390 = load i32, ptr %1389, align 4
  %1391 = load i32, ptr %14, align 4
  %1392 = icmp eq i32 %1390, %1391
  br i1 %1392, label %1393, label %1396

1393:                                             ; preds = %1388
  %1394 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  %1395 = load i32, ptr %1394, align 4
  br label %1408

1396:                                             ; preds = %1388
  %1397 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1398 = load ptr, ptr %1397, align 4
  %1399 = getelementptr inbounds %struct.nvkm_fb, ptr %1398, i32 0, i32 1, i32 1
  %1400 = load ptr, ptr %1399, align 4
  %1401 = getelementptr inbounds %struct.nvkm_device, ptr %1400, i32 0, i32 11
  %1402 = load ptr, ptr %1401, align 4
  %1403 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 2
  %1404 = load i32, ptr %1403, align 4
  %1405 = getelementptr i8, ptr %1402, i32 %1404
  %1406 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1405) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1407 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  store i32 %1406, ptr %1407, align 4
  br label %1408

1408:                                             ; preds = %1396, %1393
  %1409 = phi i32 [ %1395, %1393 ], [ %1406, %1396 ]
  %1410 = and i32 %1409, -5
  %1411 = icmp eq i32 %1409, %1410
  br i1 %1411, label %1412, label %1416

1412:                                             ; preds = %1408
  %1413 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 1
  %1414 = load i8, ptr %1413, align 4, !range !15
  %1415 = icmp eq i8 %1414, 0
  br i1 %1415, label %1442, label %1416

1416:                                             ; preds = %1412, %1408
  %1417 = load i32, ptr %14, align 4
  store i32 %1417, ptr %1389, align 4
  %1418 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  store i32 %1410, ptr %1418, align 4
  %1419 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 4
  %1420 = load i32, ptr %1419, align 4
  %1421 = icmp eq i32 %1420, 0
  br i1 %1421, label %1440, label %1422

1422:                                             ; preds = %1416
  %1423 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 2
  %1424 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 3
  br label %1425

1425:                                             ; preds = %1435, %1422
  %1426 = phi i32 [ 0, %1422 ], [ %1437, %1435 ]
  %1427 = phi i32 [ %1420, %1422 ], [ %1438, %1435 ]
  %1428 = and i32 %1427, 1
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1435, label %1430

1430:                                             ; preds = %1425
  %1431 = load ptr, ptr %2, align 4
  %1432 = load i32, ptr %1423, align 4
  %1433 = add i32 %1432, %1426
  %1434 = load i32, ptr %1418, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1431, i32 noundef %1433, i32 noundef %1434) #11
  br label %1435

1435:                                             ; preds = %1430, %1425
  %1436 = load i32, ptr %1424, align 4
  %1437 = add i32 %1436, %1426
  %1438 = lshr i32 %1427, 1
  %1439 = icmp ult i32 %1427, 2
  br i1 %1439, label %1440, label %1425

1440:                                             ; preds = %1435, %1416
  %1441 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 1
  store i8 0, ptr %1441, align 4
  br label %1442

1442:                                             ; preds = %1440, %1412
  %1443 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61
  %1444 = load i32, ptr %1443, align 4
  %1445 = load i32, ptr %14, align 4
  %1446 = icmp eq i32 %1444, %1445
  br i1 %1446, label %1447, label %1450

1447:                                             ; preds = %1442
  %1448 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 5
  %1449 = load i32, ptr %1448, align 4
  br label %1462

1450:                                             ; preds = %1442
  %1451 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1452 = load ptr, ptr %1451, align 4
  %1453 = getelementptr inbounds %struct.nvkm_fb, ptr %1452, i32 0, i32 1, i32 1
  %1454 = load ptr, ptr %1453, align 4
  %1455 = getelementptr inbounds %struct.nvkm_device, ptr %1454, i32 0, i32 11
  %1456 = load ptr, ptr %1455, align 4
  %1457 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 2
  %1458 = load i32, ptr %1457, align 4
  %1459 = getelementptr i8, ptr %1456, i32 %1458
  %1460 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1459) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1461 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 5
  store i32 %1460, ptr %1461, align 4
  br label %1462

1462:                                             ; preds = %1450, %1447
  %1463 = phi i32 [ %1449, %1447 ], [ %1460, %1450 ]
  %1464 = or i32 %1463, 2
  %1465 = icmp eq i32 %1463, %1464
  br i1 %1465, label %1466, label %1470

1466:                                             ; preds = %1462
  %1467 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 1
  %1468 = load i8, ptr %1467, align 4, !range !15
  %1469 = icmp eq i8 %1468, 0
  br i1 %1469, label %1496, label %1470

1470:                                             ; preds = %1466, %1462
  %1471 = load i32, ptr %14, align 4
  store i32 %1471, ptr %1443, align 4
  %1472 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 5
  store i32 %1464, ptr %1472, align 4
  %1473 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 4
  %1474 = load i32, ptr %1473, align 4
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1494, label %1476

1476:                                             ; preds = %1470
  %1477 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 2
  %1478 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 3
  br label %1479

1479:                                             ; preds = %1489, %1476
  %1480 = phi i32 [ 0, %1476 ], [ %1491, %1489 ]
  %1481 = phi i32 [ %1474, %1476 ], [ %1492, %1489 ]
  %1482 = and i32 %1481, 1
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1489, label %1484

1484:                                             ; preds = %1479
  %1485 = load ptr, ptr %2, align 4
  %1486 = load i32, ptr %1477, align 4
  %1487 = add i32 %1486, %1480
  %1488 = load i32, ptr %1472, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1485, i32 noundef %1487, i32 noundef %1488) #11
  br label %1489

1489:                                             ; preds = %1484, %1479
  %1490 = load i32, ptr %1478, align 4
  %1491 = add i32 %1490, %1480
  %1492 = lshr i32 %1481, 1
  %1493 = icmp ult i32 %1481, 2
  br i1 %1493, label %1494, label %1479

1494:                                             ; preds = %1489, %1470
  %1495 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 61, i32 1
  store i8 0, ptr %1495, align 4
  br label %1496

1496:                                             ; preds = %1494, %1466
  %1497 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44
  %1498 = load i32, ptr %1497, align 4
  %1499 = load i32, ptr %14, align 4
  %1500 = icmp eq i32 %1498, %1499
  br i1 %1500, label %1501, label %1504

1501:                                             ; preds = %1496
  %1502 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %1503 = load i32, ptr %1502, align 4
  br label %1516

1504:                                             ; preds = %1496
  %1505 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1506 = load ptr, ptr %1505, align 4
  %1507 = getelementptr inbounds %struct.nvkm_fb, ptr %1506, i32 0, i32 1, i32 1
  %1508 = load ptr, ptr %1507, align 4
  %1509 = getelementptr inbounds %struct.nvkm_device, ptr %1508, i32 0, i32 11
  %1510 = load ptr, ptr %1509, align 4
  %1511 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %1512 = load i32, ptr %1511, align 4
  %1513 = getelementptr i8, ptr %1510, i32 %1512
  %1514 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1513) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1515 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %1514, ptr %1515, align 4
  br label %1516

1516:                                             ; preds = %1504, %1501
  %1517 = phi i32 [ %1503, %1501 ], [ %1514, %1504 ]
  %1518 = and i32 %1517, -12615698
  %1519 = or i32 %1518, 4227088
  %1520 = icmp eq i32 %1517, %1519
  br i1 %1520, label %1521, label %1525

1521:                                             ; preds = %1516
  %1522 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  %1523 = load i8, ptr %1522, align 4, !range !15
  %1524 = icmp eq i8 %1523, 0
  br i1 %1524, label %1551, label %1525

1525:                                             ; preds = %1521, %1516
  %1526 = load i32, ptr %14, align 4
  store i32 %1526, ptr %1497, align 4
  %1527 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %1519, ptr %1527, align 4
  %1528 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %1529 = load i32, ptr %1528, align 4
  %1530 = icmp eq i32 %1529, 0
  br i1 %1530, label %1549, label %1531

1531:                                             ; preds = %1525
  %1532 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %1533 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %1534

1534:                                             ; preds = %1544, %1531
  %1535 = phi i32 [ 0, %1531 ], [ %1546, %1544 ]
  %1536 = phi i32 [ %1529, %1531 ], [ %1547, %1544 ]
  %1537 = and i32 %1536, 1
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1544, label %1539

1539:                                             ; preds = %1534
  %1540 = load ptr, ptr %2, align 4
  %1541 = load i32, ptr %1532, align 4
  %1542 = add i32 %1541, %1535
  %1543 = load i32, ptr %1527, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1540, i32 noundef %1542, i32 noundef %1543) #11
  br label %1544

1544:                                             ; preds = %1539, %1534
  %1545 = load i32, ptr %1533, align 4
  %1546 = add i32 %1545, %1535
  %1547 = lshr i32 %1536, 1
  %1548 = icmp ult i32 %1536, 2
  br i1 %1548, label %1549, label %1534

1549:                                             ; preds = %1544, %1525
  %1550 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  store i8 0, ptr %1550, align 4
  br label %1551

1551:                                             ; preds = %1549, %1521
  tail call fastcc void @r1373f4_init(ptr noundef %2)
  tail call fastcc void @r1373f4_fini(ptr noundef %2)
  %1552 = load i32, ptr %12, align 4
  %1553 = load i32, ptr %14, align 4
  %1554 = icmp eq i32 %1552, %1553
  br i1 %1554, label %1555, label %1558

1555:                                             ; preds = %1551
  %1556 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  %1557 = load i32, ptr %1556, align 4
  br label %1570

1558:                                             ; preds = %1551
  %1559 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1560 = load ptr, ptr %1559, align 4
  %1561 = getelementptr inbounds %struct.nvkm_fb, ptr %1560, i32 0, i32 1, i32 1
  %1562 = load ptr, ptr %1561, align 4
  %1563 = getelementptr inbounds %struct.nvkm_device, ptr %1562, i32 0, i32 11
  %1564 = load ptr, ptr %1563, align 4
  %1565 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %1566 = load i32, ptr %1565, align 4
  %1567 = getelementptr i8, ptr %1564, i32 %1566
  %1568 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1567) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1569 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %1568, ptr %1569, align 4
  br label %1570

1570:                                             ; preds = %1558, %1555
  %1571 = phi i32 [ %1557, %1555 ], [ %1568, %1558 ]
  %1572 = or i32 %1571, 524288
  %1573 = icmp eq i32 %1571, %1572
  br i1 %1573, label %1574, label %1578

1574:                                             ; preds = %1570
  %1575 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  %1576 = load i8, ptr %1575, align 4, !range !15
  %1577 = icmp eq i8 %1576, 0
  br i1 %1577, label %1604, label %1578

1578:                                             ; preds = %1574, %1570
  %1579 = load i32, ptr %14, align 4
  store i32 %1579, ptr %12, align 4
  %1580 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %1572, ptr %1580, align 4
  %1581 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 4
  %1582 = load i32, ptr %1581, align 4
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1602, label %1584

1584:                                             ; preds = %1578
  %1585 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %1586 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 3
  br label %1587

1587:                                             ; preds = %1597, %1584
  %1588 = phi i32 [ 0, %1584 ], [ %1599, %1597 ]
  %1589 = phi i32 [ %1582, %1584 ], [ %1600, %1597 ]
  %1590 = and i32 %1589, 1
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1597, label %1592

1592:                                             ; preds = %1587
  %1593 = load ptr, ptr %2, align 4
  %1594 = load i32, ptr %1585, align 4
  %1595 = add i32 %1594, %1588
  %1596 = load i32, ptr %1580, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1593, i32 noundef %1595, i32 noundef %1596) #11
  br label %1597

1597:                                             ; preds = %1592, %1587
  %1598 = load i32, ptr %1586, align 4
  %1599 = add i32 %1598, %1588
  %1600 = lshr i32 %1589, 1
  %1601 = icmp ult i32 %1589, 2
  br i1 %1601, label %1602, label %1587

1602:                                             ; preds = %1597, %1578
  %1603 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  store i8 0, ptr %1603, align 4
  br label %1604

1604:                                             ; preds = %1602, %1574
  %1605 = load i32, ptr %300, align 4
  %1606 = load i32, ptr %14, align 4
  %1607 = icmp eq i32 %1605, %1606
  br i1 %1607, label %1608, label %1611

1608:                                             ; preds = %1604
  %1609 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %1610 = load i32, ptr %1609, align 4
  br label %1623

1611:                                             ; preds = %1604
  %1612 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1613 = load ptr, ptr %1612, align 4
  %1614 = getelementptr inbounds %struct.nvkm_fb, ptr %1613, i32 0, i32 1, i32 1
  %1615 = load ptr, ptr %1614, align 4
  %1616 = getelementptr inbounds %struct.nvkm_device, ptr %1615, i32 0, i32 11
  %1617 = load ptr, ptr %1616, align 4
  %1618 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %1619 = load i32, ptr %1618, align 4
  %1620 = getelementptr i8, ptr %1617, i32 %1619
  %1621 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1620) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1622 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %1621, ptr %1622, align 4
  br label %1623

1623:                                             ; preds = %1611, %1608
  %1624 = phi i32 [ %1610, %1608 ], [ %1621, %1611 ]
  %1625 = and i32 %1624, -8421377
  %1626 = or i32 %1625, 8388608
  %1627 = icmp eq i32 %1624, %1626
  br i1 %1627, label %1628, label %1632

1628:                                             ; preds = %1623
  %1629 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %1630 = load i8, ptr %1629, align 4, !range !15
  %1631 = icmp eq i8 %1630, 0
  br i1 %1631, label %1714, label %1632

1632:                                             ; preds = %1628, %1623
  %1633 = load i32, ptr %14, align 4
  store i32 %1633, ptr %300, align 4
  %1634 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %1626, ptr %1634, align 4
  %1635 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %1636 = load i32, ptr %1635, align 4
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %1656, label %1638

1638:                                             ; preds = %1632
  %1639 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %1640 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %1641

1641:                                             ; preds = %1651, %1638
  %1642 = phi i32 [ 0, %1638 ], [ %1653, %1651 ]
  %1643 = phi i32 [ %1636, %1638 ], [ %1654, %1651 ]
  %1644 = and i32 %1643, 1
  %1645 = icmp eq i32 %1644, 0
  br i1 %1645, label %1651, label %1646

1646:                                             ; preds = %1641
  %1647 = load ptr, ptr %2, align 4
  %1648 = load i32, ptr %1639, align 4
  %1649 = add i32 %1648, %1642
  %1650 = load i32, ptr %1634, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1647, i32 noundef %1649, i32 noundef %1650) #11
  br label %1651

1651:                                             ; preds = %1646, %1641
  %1652 = load i32, ptr %1640, align 4
  %1653 = add i32 %1652, %1642
  %1654 = lshr i32 %1643, 1
  %1655 = icmp ult i32 %1643, 2
  br i1 %1655, label %1656, label %1641

1656:                                             ; preds = %1651, %1632
  %1657 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %1657, align 4
  br label %1714

1658:                                             ; preds = %1381
  br i1 %1386, label %1659, label %1714

1659:                                             ; preds = %1658
  %1660 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46
  %1661 = load i32, ptr %1660, align 4
  %1662 = load i32, ptr %14, align 4
  %1663 = icmp eq i32 %1661, %1662
  br i1 %1663, label %1664, label %1667

1664:                                             ; preds = %1659
  %1665 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  %1666 = load i32, ptr %1665, align 4
  br label %1679

1667:                                             ; preds = %1659
  %1668 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1669 = load ptr, ptr %1668, align 4
  %1670 = getelementptr inbounds %struct.nvkm_fb, ptr %1669, i32 0, i32 1, i32 1
  %1671 = load ptr, ptr %1670, align 4
  %1672 = getelementptr inbounds %struct.nvkm_device, ptr %1671, i32 0, i32 11
  %1673 = load ptr, ptr %1672, align 4
  %1674 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 2
  %1675 = load i32, ptr %1674, align 4
  %1676 = getelementptr i8, ptr %1673, i32 %1675
  %1677 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1676) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1678 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  store i32 %1677, ptr %1678, align 4
  br label %1679

1679:                                             ; preds = %1667, %1664
  %1680 = phi i32 [ %1666, %1664 ], [ %1677, %1667 ]
  %1681 = and i32 %1680, -5
  %1682 = icmp eq i32 %1680, %1681
  br i1 %1682, label %1683, label %1687

1683:                                             ; preds = %1679
  %1684 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 1
  %1685 = load i8, ptr %1684, align 4, !range !15
  %1686 = icmp eq i8 %1685, 0
  br i1 %1686, label %1713, label %1687

1687:                                             ; preds = %1683, %1679
  %1688 = load i32, ptr %14, align 4
  store i32 %1688, ptr %1660, align 4
  %1689 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  store i32 %1681, ptr %1689, align 4
  %1690 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 4
  %1691 = load i32, ptr %1690, align 4
  %1692 = icmp eq i32 %1691, 0
  br i1 %1692, label %1711, label %1693

1693:                                             ; preds = %1687
  %1694 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 2
  %1695 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 3
  br label %1696

1696:                                             ; preds = %1706, %1693
  %1697 = phi i32 [ 0, %1693 ], [ %1708, %1706 ]
  %1698 = phi i32 [ %1691, %1693 ], [ %1709, %1706 ]
  %1699 = and i32 %1698, 1
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1706, label %1701

1701:                                             ; preds = %1696
  %1702 = load ptr, ptr %2, align 4
  %1703 = load i32, ptr %1694, align 4
  %1704 = add i32 %1703, %1697
  %1705 = load i32, ptr %1689, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1702, i32 noundef %1704, i32 noundef %1705) #11
  br label %1706

1706:                                             ; preds = %1701, %1696
  %1707 = load i32, ptr %1695, align 4
  %1708 = add i32 %1707, %1697
  %1709 = lshr i32 %1698, 1
  %1710 = icmp ult i32 %1698, 2
  br i1 %1710, label %1711, label %1696

1711:                                             ; preds = %1706, %1687
  %1712 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 1
  store i8 0, ptr %1712, align 4
  br label %1713

1713:                                             ; preds = %1711, %1683
  tail call fastcc void @r1373f4_init(ptr noundef %2)
  tail call fastcc void @r1373f4_fini(ptr noundef %2)
  br label %1714

1714:                                             ; preds = %1713, %1658, %1656, %1628, %1387
  %1715 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 8
  %1716 = load i32, ptr %1715, align 8
  %1717 = icmp eq i32 %1716, 2
  br i1 %1717, label %1776, label %1718

1718:                                             ; preds = %1714
  %1719 = load i32, ptr %682, align 4
  %1720 = and i32 %1719, 1048576
  %1721 = icmp eq i32 %1720, 0
  br i1 %1721, label %1776, label %1722

1722:                                             ; preds = %1718
  %1723 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42
  %1724 = load i32, ptr %1723, align 4
  %1725 = load i32, ptr %14, align 4
  %1726 = icmp eq i32 %1724, %1725
  br i1 %1726, label %1727, label %1730

1727:                                             ; preds = %1722
  %1728 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  %1729 = load i32, ptr %1728, align 4
  br label %1742

1730:                                             ; preds = %1722
  %1731 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1732 = load ptr, ptr %1731, align 4
  %1733 = getelementptr inbounds %struct.nvkm_fb, ptr %1732, i32 0, i32 1, i32 1
  %1734 = load ptr, ptr %1733, align 4
  %1735 = getelementptr inbounds %struct.nvkm_device, ptr %1734, i32 0, i32 11
  %1736 = load ptr, ptr %1735, align 4
  %1737 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 2
  %1738 = load i32, ptr %1737, align 4
  %1739 = getelementptr i8, ptr %1736, i32 %1738
  %1740 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1739) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1741 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  store i32 %1740, ptr %1741, align 4
  br label %1742

1742:                                             ; preds = %1730, %1727
  %1743 = phi i32 [ %1729, %1727 ], [ %1740, %1730 ]
  %1744 = or i32 %1743, -2147483648
  %1745 = icmp eq i32 %1743, %1744
  br i1 %1745, label %1746, label %1750

1746:                                             ; preds = %1742
  %1747 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 1
  %1748 = load i8, ptr %1747, align 4, !range !15
  %1749 = icmp eq i8 %1748, 0
  br i1 %1749, label %1776, label %1750

1750:                                             ; preds = %1746, %1742
  %1751 = load i32, ptr %14, align 4
  store i32 %1751, ptr %1723, align 4
  %1752 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  store i32 %1744, ptr %1752, align 4
  %1753 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 4
  %1754 = load i32, ptr %1753, align 4
  %1755 = icmp eq i32 %1754, 0
  br i1 %1755, label %1774, label %1756

1756:                                             ; preds = %1750
  %1757 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 2
  %1758 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 3
  br label %1759

1759:                                             ; preds = %1769, %1756
  %1760 = phi i32 [ 0, %1756 ], [ %1771, %1769 ]
  %1761 = phi i32 [ %1754, %1756 ], [ %1772, %1769 ]
  %1762 = and i32 %1761, 1
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1769, label %1764

1764:                                             ; preds = %1759
  %1765 = load ptr, ptr %2, align 4
  %1766 = load i32, ptr %1757, align 4
  %1767 = add i32 %1766, %1760
  %1768 = load i32, ptr %1752, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1765, i32 noundef %1767, i32 noundef %1768) #11
  br label %1769

1769:                                             ; preds = %1764, %1759
  %1770 = load i32, ptr %1758, align 4
  %1771 = add i32 %1770, %1760
  %1772 = lshr i32 %1761, 1
  %1773 = icmp ult i32 %1761, 2
  br i1 %1773, label %1774, label %1759

1774:                                             ; preds = %1769, %1750
  %1775 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 1
  store i8 0, ptr %1775, align 4
  br label %1776

1776:                                             ; preds = %1774, %1746, %1718, %1714
  %1777 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 64
  %1778 = getelementptr inbounds %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 4
  %1779 = load i64, ptr %1778, align 4
  %1780 = lshr i64 %1779, 56
  %1781 = trunc i64 %1780 to i32
  %1782 = and i32 %1781, 3
  %1783 = mul nuw nsw i32 %1782, 17
  %1784 = load i32, ptr %14, align 4
  store i32 %1784, ptr %1777, align 4
  %1785 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 64, i32 5
  store i32 %1783, ptr %1785, align 4
  %1786 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 64, i32 4
  %1787 = load i32, ptr %1786, align 4
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1809, label %1789

1789:                                             ; preds = %1776
  %1790 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 64, i32 2
  %1791 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 64, i32 3
  br label %1792

1792:                                             ; preds = %1802, %1789
  %1793 = phi i32 [ 0, %1789 ], [ %1804, %1802 ]
  %1794 = phi i32 [ %1787, %1789 ], [ %1805, %1802 ]
  %1795 = and i32 %1794, 1
  %1796 = icmp eq i32 %1795, 0
  br i1 %1796, label %1802, label %1797

1797:                                             ; preds = %1792
  %1798 = load ptr, ptr %2, align 4
  %1799 = load i32, ptr %1790, align 4
  %1800 = add i32 %1799, %1793
  %1801 = load i32, ptr %1785, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1798, i32 noundef %1800, i32 noundef %1801) #11
  br label %1802

1802:                                             ; preds = %1797, %1792
  %1803 = load i32, ptr %1791, align 4
  %1804 = add i32 %1803, %1793
  %1805 = lshr i32 %1794, 1
  %1806 = icmp ult i32 %1794, 2
  br i1 %1806, label %1807, label %1792

1807:                                             ; preds = %1802
  %1808 = load i32, ptr %14, align 4
  br label %1809

1809:                                             ; preds = %1807, %1776
  %1810 = phi i32 [ %1808, %1807 ], [ %1784, %1776 ]
  %1811 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 40
  %1812 = getelementptr inbounds %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 11, i32 0, i32 2
  %1813 = load i8, ptr %1812, align 4
  %1814 = zext i8 %1813 to i32
  %1815 = mul nuw i32 %1814, 16843009
  store i32 %1810, ptr %1811, align 4
  %1816 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 40, i32 5
  store i32 %1815, ptr %1816, align 4
  %1817 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 40, i32 4
  %1818 = load i32, ptr %1817, align 4
  %1819 = icmp eq i32 %1818, 0
  br i1 %1819, label %1840, label %1820

1820:                                             ; preds = %1809
  %1821 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 40, i32 2
  %1822 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 40, i32 3
  br label %1823

1823:                                             ; preds = %1833, %1820
  %1824 = phi i32 [ 0, %1820 ], [ %1835, %1833 ]
  %1825 = phi i32 [ %1818, %1820 ], [ %1836, %1833 ]
  %1826 = and i32 %1825, 1
  %1827 = icmp eq i32 %1826, 0
  br i1 %1827, label %1833, label %1828

1828:                                             ; preds = %1823
  %1829 = load ptr, ptr %2, align 4
  %1830 = load i32, ptr %1821, align 4
  %1831 = add i32 %1830, %1824
  %1832 = load i32, ptr %1816, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1829, i32 noundef %1831, i32 noundef %1832) #11
  br label %1833

1833:                                             ; preds = %1828, %1823
  %1834 = load i32, ptr %1822, align 4
  %1835 = add i32 %1834, %1824
  %1836 = lshr i32 %1825, 1
  %1837 = icmp ult i32 %1825, 2
  br i1 %1837, label %1838, label %1823

1838:                                             ; preds = %1833
  %1839 = load i32, ptr %14, align 4
  br label %1840

1840:                                             ; preds = %1838, %1809
  %1841 = phi i32 [ %1839, %1838 ], [ %1810, %1809 ]
  %1842 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 65
  %1843 = load i8, ptr %1812, align 4
  %1844 = zext i8 %1843 to i32
  %1845 = mul nuw i32 %1844, 16843009
  store i32 %1841, ptr %1842, align 4
  %1846 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 65, i32 5
  store i32 %1845, ptr %1846, align 4
  %1847 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 65, i32 4
  %1848 = load i32, ptr %1847, align 4
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %1868, label %1850

1850:                                             ; preds = %1840
  %1851 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 65, i32 2
  %1852 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 65, i32 3
  br label %1853

1853:                                             ; preds = %1863, %1850
  %1854 = phi i32 [ 0, %1850 ], [ %1865, %1863 ]
  %1855 = phi i32 [ %1848, %1850 ], [ %1866, %1863 ]
  %1856 = and i32 %1855, 1
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1863, label %1858

1858:                                             ; preds = %1853
  %1859 = load ptr, ptr %2, align 4
  %1860 = load i32, ptr %1851, align 4
  %1861 = add i32 %1860, %1854
  %1862 = load i32, ptr %1846, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1859, i32 noundef %1861, i32 noundef %1862) #11
  br label %1863

1863:                                             ; preds = %1858, %1853
  %1864 = load i32, ptr %1852, align 4
  %1865 = add i32 %1864, %1854
  %1866 = lshr i32 %1855, 1
  %1867 = icmp ult i32 %1855, 2
  br i1 %1867, label %1868, label %1853

1868:                                             ; preds = %1863, %1840
  %1869 = load i32, ptr %682, align 4
  %1870 = and i32 %1869, 393216
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %1872, label %1923

1872:                                             ; preds = %1868
  %1873 = and i32 %1869, 255
  %1874 = mul nuw i32 %1873, 16843009
  %1875 = load i32, ptr %14, align 4
  store i32 %1875, ptr %587, align 4
  store i32 %1874, ptr %589, align 4
  %1876 = load i32, ptr %590, align 4
  %1877 = icmp eq i32 %1876, 0
  br i1 %1877, label %1898, label %1878

1878:                                             ; preds = %1872
  %1879 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 38, i32 2
  %1880 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 38, i32 3
  br label %1881

1881:                                             ; preds = %1891, %1878
  %1882 = phi i32 [ 0, %1878 ], [ %1893, %1891 ]
  %1883 = phi i32 [ %1876, %1878 ], [ %1894, %1891 ]
  %1884 = and i32 %1883, 1
  %1885 = icmp eq i32 %1884, 0
  br i1 %1885, label %1891, label %1886

1886:                                             ; preds = %1881
  %1887 = load ptr, ptr %2, align 4
  %1888 = load i32, ptr %1879, align 4
  %1889 = add i32 %1888, %1882
  %1890 = load i32, ptr %589, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1887, i32 noundef %1889, i32 noundef %1890) #11
  br label %1891

1891:                                             ; preds = %1886, %1881
  %1892 = load i32, ptr %1880, align 4
  %1893 = add i32 %1892, %1882
  %1894 = lshr i32 %1883, 1
  %1895 = icmp ult i32 %1883, 2
  br i1 %1895, label %1896, label %1881

1896:                                             ; preds = %1891
  %1897 = load i32, ptr %14, align 4
  br label %1898

1898:                                             ; preds = %1896, %1872
  %1899 = phi i32 [ %1897, %1896 ], [ %1875, %1872 ]
  %1900 = load i32, ptr %682, align 4
  %1901 = and i32 %1900, 255
  %1902 = mul nuw i32 %1901, 16843009
  store i32 %1899, ptr %615, align 4
  store i32 %1902, ptr %616, align 4
  %1903 = load i32, ptr %617, align 4
  %1904 = icmp eq i32 %1903, 0
  br i1 %1904, label %1972, label %1905

1905:                                             ; preds = %1898
  %1906 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 59, i32 2
  %1907 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 59, i32 3
  br label %1908

1908:                                             ; preds = %1918, %1905
  %1909 = phi i32 [ 0, %1905 ], [ %1920, %1918 ]
  %1910 = phi i32 [ %1903, %1905 ], [ %1921, %1918 ]
  %1911 = and i32 %1910, 1
  %1912 = icmp eq i32 %1911, 0
  br i1 %1912, label %1918, label %1913

1913:                                             ; preds = %1908
  %1914 = load ptr, ptr %2, align 4
  %1915 = load i32, ptr %1906, align 4
  %1916 = add i32 %1915, %1909
  %1917 = load i32, ptr %616, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1914, i32 noundef %1916, i32 noundef %1917) #11
  br label %1918

1918:                                             ; preds = %1913, %1908
  %1919 = load i32, ptr %1907, align 4
  %1920 = add i32 %1919, %1909
  %1921 = lshr i32 %1910, 1
  %1922 = icmp ult i32 %1910, 2
  br i1 %1922, label %1972, label %1908

1923:                                             ; preds = %1868
  %1924 = and i32 %1869, 262144
  %1925 = icmp eq i32 %1924, 0
  br i1 %1925, label %1926, label %1972

1926:                                             ; preds = %1923
  %1927 = load i32, ptr %14, align 4
  store i32 %1927, ptr %587, align 4
  store i32 0, ptr %589, align 4
  %1928 = load i32, ptr %590, align 4
  %1929 = icmp eq i32 %1928, 0
  br i1 %1929, label %1950, label %1930

1930:                                             ; preds = %1926
  %1931 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 38, i32 2
  %1932 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 38, i32 3
  br label %1933

1933:                                             ; preds = %1943, %1930
  %1934 = phi i32 [ 0, %1930 ], [ %1945, %1943 ]
  %1935 = phi i32 [ %1928, %1930 ], [ %1946, %1943 ]
  %1936 = and i32 %1935, 1
  %1937 = icmp eq i32 %1936, 0
  br i1 %1937, label %1943, label %1938

1938:                                             ; preds = %1933
  %1939 = load ptr, ptr %2, align 4
  %1940 = load i32, ptr %1931, align 4
  %1941 = add i32 %1940, %1934
  %1942 = load i32, ptr %589, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1939, i32 noundef %1941, i32 noundef %1942) #11
  br label %1943

1943:                                             ; preds = %1938, %1933
  %1944 = load i32, ptr %1932, align 4
  %1945 = add i32 %1944, %1934
  %1946 = lshr i32 %1935, 1
  %1947 = icmp ult i32 %1935, 2
  br i1 %1947, label %1948, label %1933

1948:                                             ; preds = %1943
  %1949 = load i32, ptr %14, align 4
  br label %1950

1950:                                             ; preds = %1948, %1926
  %1951 = phi i32 [ %1949, %1948 ], [ %1927, %1926 ]
  store i32 %1951, ptr %615, align 4
  store i32 0, ptr %616, align 4
  %1952 = load i32, ptr %617, align 4
  %1953 = icmp eq i32 %1952, 0
  br i1 %1953, label %1972, label %1954

1954:                                             ; preds = %1950
  %1955 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 59, i32 2
  %1956 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 59, i32 3
  br label %1957

1957:                                             ; preds = %1967, %1954
  %1958 = phi i32 [ 0, %1954 ], [ %1969, %1967 ]
  %1959 = phi i32 [ %1952, %1954 ], [ %1970, %1967 ]
  %1960 = and i32 %1959, 1
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %1967, label %1962

1962:                                             ; preds = %1957
  %1963 = load ptr, ptr %2, align 4
  %1964 = load i32, ptr %1955, align 4
  %1965 = add i32 %1964, %1958
  %1966 = load i32, ptr %616, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1963, i32 noundef %1965, i32 noundef %1966) #11
  br label %1967

1967:                                             ; preds = %1962, %1957
  %1968 = load i32, ptr %1956, align 4
  %1969 = add i32 %1968, %1958
  %1970 = lshr i32 %1959, 1
  %1971 = icmp ult i32 %1959, 2
  br i1 %1971, label %1972, label %1957

1972:                                             ; preds = %1967, %1950, %1923, %1918, %1898
  %1973 = load i32, ptr %1715, align 8
  %1974 = icmp eq i32 %1973, 2
  br i1 %1974, label %2035, label %1975

1975:                                             ; preds = %1972
  %1976 = load i32, ptr %682, align 4
  %1977 = and i32 %1976, 255
  %1978 = mul nuw i32 %1977, 16777472
  %1979 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 39
  %1980 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 39, i32 1
  store i8 1, ptr %1980, align 4
  %1981 = load i32, ptr %1979, align 4
  %1982 = load i32, ptr %14, align 4
  %1983 = icmp eq i32 %1981, %1982
  br i1 %1983, label %1984, label %1987

1984:                                             ; preds = %1975
  %1985 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 39, i32 5
  %1986 = load i32, ptr %1985, align 4
  br label %1999

1987:                                             ; preds = %1975
  %1988 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %1989 = load ptr, ptr %1988, align 4
  %1990 = getelementptr inbounds %struct.nvkm_fb, ptr %1989, i32 0, i32 1, i32 1
  %1991 = load ptr, ptr %1990, align 4
  %1992 = getelementptr inbounds %struct.nvkm_device, ptr %1991, i32 0, i32 11
  %1993 = load ptr, ptr %1992, align 4
  %1994 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 39, i32 2
  %1995 = load i32, ptr %1994, align 4
  %1996 = getelementptr i8, ptr %1993, i32 %1995
  %1997 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1996) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1998 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 39, i32 5
  store i32 %1997, ptr %1998, align 4
  br label %1999

1999:                                             ; preds = %1987, %1984
  %2000 = phi i32 [ %1986, %1984 ], [ %1997, %1987 ]
  %2001 = and i32 %2000, 16711935
  %2002 = or i32 %2001, %1978
  %2003 = icmp eq i32 %2000, %2002
  br i1 %2003, label %2004, label %2007

2004:                                             ; preds = %1999
  %2005 = load i8, ptr %1980, align 4, !range !15
  %2006 = icmp eq i8 %2005, 0
  br i1 %2006, label %2032, label %2007

2007:                                             ; preds = %2004, %1999
  %2008 = load i32, ptr %14, align 4
  store i32 %2008, ptr %1979, align 4
  %2009 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 39, i32 5
  store i32 %2002, ptr %2009, align 4
  %2010 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 39, i32 4
  %2011 = load i32, ptr %2010, align 4
  %2012 = icmp eq i32 %2011, 0
  br i1 %2012, label %2031, label %2013

2013:                                             ; preds = %2007
  %2014 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 39, i32 2
  %2015 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 39, i32 3
  br label %2016

2016:                                             ; preds = %2026, %2013
  %2017 = phi i32 [ 0, %2013 ], [ %2028, %2026 ]
  %2018 = phi i32 [ %2011, %2013 ], [ %2029, %2026 ]
  %2019 = and i32 %2018, 1
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2026, label %2021

2021:                                             ; preds = %2016
  %2022 = load ptr, ptr %2, align 4
  %2023 = load i32, ptr %2014, align 4
  %2024 = add i32 %2023, %2017
  %2025 = load i32, ptr %2009, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2022, i32 noundef %2024, i32 noundef %2025) #11
  br label %2026

2026:                                             ; preds = %2021, %2016
  %2027 = load i32, ptr %2015, align 4
  %2028 = add i32 %2027, %2017
  %2029 = lshr i32 %2018, 1
  %2030 = icmp ult i32 %2018, 2
  br i1 %2030, label %2031, label %2016

2031:                                             ; preds = %2026, %2007
  store i8 0, ptr %1980, align 4
  br label %2032

2032:                                             ; preds = %2031, %2004
  %2033 = load i32, ptr %1715, align 8
  %2034 = icmp eq i32 %2033, 2
  br i1 %2034, label %2035, label %2039

2035:                                             ; preds = %2032, %1972
  %2036 = load i32, ptr %682, align 4
  %2037 = and i32 %2036, 67108864
  %2038 = icmp eq i32 %2037, 0
  br i1 %2038, label %2039, label %2040

2039:                                             ; preds = %2035, %2032
  br label %2040

2040:                                             ; preds = %2039, %2035
  %2041 = phi i32 [ 0, %2039 ], [ 128, %2035 ]
  %2042 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 43
  %2043 = load i32, ptr %2042, align 4
  %2044 = load i32, ptr %14, align 4
  %2045 = icmp eq i32 %2043, %2044
  br i1 %2045, label %2046, label %2049

2046:                                             ; preds = %2040
  %2047 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 43, i32 5
  %2048 = load i32, ptr %2047, align 4
  br label %2061

2049:                                             ; preds = %2040
  %2050 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2051 = load ptr, ptr %2050, align 4
  %2052 = getelementptr inbounds %struct.nvkm_fb, ptr %2051, i32 0, i32 1, i32 1
  %2053 = load ptr, ptr %2052, align 4
  %2054 = getelementptr inbounds %struct.nvkm_device, ptr %2053, i32 0, i32 11
  %2055 = load ptr, ptr %2054, align 4
  %2056 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 43, i32 2
  %2057 = load i32, ptr %2056, align 4
  %2058 = getelementptr i8, ptr %2055, i32 %2057
  %2059 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2058) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2060 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 43, i32 5
  store i32 %2059, ptr %2060, align 4
  br label %2061

2061:                                             ; preds = %2049, %2046
  %2062 = phi i32 [ %2048, %2046 ], [ %2059, %2049 ]
  %2063 = and i32 %2062, -129
  %2064 = or i32 %2063, %2041
  %2065 = icmp eq i32 %2062, %2064
  br i1 %2065, label %2066, label %2070

2066:                                             ; preds = %2061
  %2067 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 43, i32 1
  %2068 = load i8, ptr %2067, align 4, !range !15
  %2069 = icmp eq i8 %2068, 0
  br i1 %2069, label %2096, label %2070

2070:                                             ; preds = %2066, %2061
  %2071 = load i32, ptr %14, align 4
  store i32 %2071, ptr %2042, align 4
  %2072 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 43, i32 5
  store i32 %2064, ptr %2072, align 4
  %2073 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 43, i32 4
  %2074 = load i32, ptr %2073, align 4
  %2075 = icmp eq i32 %2074, 0
  br i1 %2075, label %2094, label %2076

2076:                                             ; preds = %2070
  %2077 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 43, i32 2
  %2078 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 43, i32 3
  br label %2079

2079:                                             ; preds = %2089, %2076
  %2080 = phi i32 [ 0, %2076 ], [ %2091, %2089 ]
  %2081 = phi i32 [ %2074, %2076 ], [ %2092, %2089 ]
  %2082 = and i32 %2081, 1
  %2083 = icmp eq i32 %2082, 0
  br i1 %2083, label %2089, label %2084

2084:                                             ; preds = %2079
  %2085 = load ptr, ptr %2, align 4
  %2086 = load i32, ptr %2077, align 4
  %2087 = add i32 %2086, %2080
  %2088 = load i32, ptr %2072, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2085, i32 noundef %2087, i32 noundef %2088) #11
  br label %2089

2089:                                             ; preds = %2084, %2079
  %2090 = load i32, ptr %2078, align 4
  %2091 = add i32 %2090, %2080
  %2092 = lshr i32 %2081, 1
  %2093 = icmp ult i32 %2081, 2
  br i1 %2093, label %2094, label %2079

2094:                                             ; preds = %2089, %2070
  %2095 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 43, i32 1
  store i8 0, ptr %2095, align 4
  br label %2096

2096:                                             ; preds = %2094, %2066
  %2097 = load i32, ptr %5, align 4
  %2098 = and i32 %2097, 8192
  %2099 = icmp eq i32 %2098, 0
  %2100 = select i1 %2099, i32 50331648, i32 0
  %2101 = shl i32 %2097, 1
  %2102 = and i32 %2101, 8192
  %2103 = or i32 %2100, %2102
  %2104 = load i32, ptr %682, align 4
  %2105 = lshr i32 %2104, 5
  %2106 = and i32 %2105, 16384
  %2107 = or i32 %2103, %2106
  %2108 = and i32 %2104, 262144
  %2109 = icmp eq i32 %2108, 0
  %2110 = select i1 %2109, i32 3, i32 1946157056
  %2111 = or i32 %2107, %2110
  %2112 = xor i32 %2111, 24576
  %2113 = load i32, ptr %715, align 4
  %2114 = load i32, ptr %14, align 4
  %2115 = icmp eq i32 %2113, %2114
  br i1 %2115, label %2116, label %2119

2116:                                             ; preds = %2096
  %2117 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  %2118 = load i32, ptr %2117, align 4
  br label %2131

2119:                                             ; preds = %2096
  %2120 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2121 = load ptr, ptr %2120, align 4
  %2122 = getelementptr inbounds %struct.nvkm_fb, ptr %2121, i32 0, i32 1, i32 1
  %2123 = load ptr, ptr %2122, align 4
  %2124 = getelementptr inbounds %struct.nvkm_device, ptr %2123, i32 0, i32 11
  %2125 = load ptr, ptr %2124, align 4
  %2126 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 2
  %2127 = load i32, ptr %2126, align 4
  %2128 = getelementptr i8, ptr %2125, i32 %2127
  %2129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2128) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2130 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  store i32 %2129, ptr %2130, align 4
  br label %2131

2131:                                             ; preds = %2119, %2116
  %2132 = phi i32 [ %2118, %2116 ], [ %2129, %2119 ]
  %2133 = and i32 %2132, -458753
  %2134 = or i32 %2133, %2112
  %2135 = icmp eq i32 %2132, %2134
  br i1 %2135, label %2136, label %2140

2136:                                             ; preds = %2131
  %2137 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 1
  %2138 = load i8, ptr %2137, align 4, !range !15
  %2139 = icmp eq i8 %2138, 0
  br i1 %2139, label %2166, label %2140

2140:                                             ; preds = %2136, %2131
  %2141 = load i32, ptr %14, align 4
  store i32 %2141, ptr %715, align 4
  %2142 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 5
  store i32 %2134, ptr %2142, align 4
  %2143 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 4
  %2144 = load i32, ptr %2143, align 4
  %2145 = icmp eq i32 %2144, 0
  br i1 %2145, label %2164, label %2146

2146:                                             ; preds = %2140
  %2147 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 2
  %2148 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 3
  br label %2149

2149:                                             ; preds = %2159, %2146
  %2150 = phi i32 [ 0, %2146 ], [ %2161, %2159 ]
  %2151 = phi i32 [ %2144, %2146 ], [ %2162, %2159 ]
  %2152 = and i32 %2151, 1
  %2153 = icmp eq i32 %2152, 0
  br i1 %2153, label %2159, label %2154

2154:                                             ; preds = %2149
  %2155 = load ptr, ptr %2, align 4
  %2156 = load i32, ptr %2147, align 4
  %2157 = add i32 %2156, %2150
  %2158 = load i32, ptr %2142, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2155, i32 noundef %2157, i32 noundef %2158) #11
  br label %2159

2159:                                             ; preds = %2154, %2149
  %2160 = load i32, ptr %2148, align 4
  %2161 = add i32 %2160, %2150
  %2162 = lshr i32 %2151, 1
  %2163 = icmp ult i32 %2151, 2
  br i1 %2163, label %2164, label %2149

2164:                                             ; preds = %2159, %2140
  %2165 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 60, i32 1
  store i8 0, ptr %2165, align 4
  br label %2166

2166:                                             ; preds = %2164, %2136
  %2167 = load i32, ptr %5, align 4
  %2168 = shl i32 %2167, 9
  %2169 = and i32 %2168, 4096
  %2170 = load i32, ptr %300, align 4
  %2171 = load i32, ptr %14, align 4
  %2172 = icmp eq i32 %2170, %2171
  br i1 %2172, label %2173, label %2176

2173:                                             ; preds = %2166
  %2174 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %2175 = load i32, ptr %2174, align 4
  br label %2188

2176:                                             ; preds = %2166
  %2177 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2178 = load ptr, ptr %2177, align 4
  %2179 = getelementptr inbounds %struct.nvkm_fb, ptr %2178, i32 0, i32 1, i32 1
  %2180 = load ptr, ptr %2179, align 4
  %2181 = getelementptr inbounds %struct.nvkm_device, ptr %2180, i32 0, i32 11
  %2182 = load ptr, ptr %2181, align 4
  %2183 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %2184 = load i32, ptr %2183, align 4
  %2185 = getelementptr i8, ptr %2182, i32 %2184
  %2186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2185) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2187 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %2186, ptr %2187, align 4
  br label %2188

2188:                                             ; preds = %2176, %2173
  %2189 = phi i32 [ %2175, %2173 ], [ %2186, %2176 ]
  %2190 = and i32 %2189, -4097
  %2191 = or i32 %2190, %2169
  %2192 = xor i32 %2191, 4096
  %2193 = icmp eq i32 %2189, %2192
  br i1 %2193, label %2194, label %2198

2194:                                             ; preds = %2188
  %2195 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %2196 = load i8, ptr %2195, align 4, !range !15
  %2197 = icmp eq i8 %2196, 0
  br i1 %2197, label %2224, label %2198

2198:                                             ; preds = %2194, %2188
  %2199 = load i32, ptr %14, align 4
  store i32 %2199, ptr %300, align 4
  %2200 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %2192, ptr %2200, align 4
  %2201 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %2202 = load i32, ptr %2201, align 4
  %2203 = icmp eq i32 %2202, 0
  br i1 %2203, label %2222, label %2204

2204:                                             ; preds = %2198
  %2205 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %2206 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %2207

2207:                                             ; preds = %2217, %2204
  %2208 = phi i32 [ 0, %2204 ], [ %2219, %2217 ]
  %2209 = phi i32 [ %2202, %2204 ], [ %2220, %2217 ]
  %2210 = and i32 %2209, 1
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2217, label %2212

2212:                                             ; preds = %2207
  %2213 = load ptr, ptr %2, align 4
  %2214 = load i32, ptr %2205, align 4
  %2215 = add i32 %2214, %2208
  %2216 = load i32, ptr %2200, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2213, i32 noundef %2215, i32 noundef %2216) #11
  br label %2217

2217:                                             ; preds = %2212, %2207
  %2218 = load i32, ptr %2206, align 4
  %2219 = add i32 %2218, %2208
  %2220 = lshr i32 %2209, 1
  %2221 = icmp ult i32 %2209, 2
  br i1 %2221, label %2222, label %2207

2222:                                             ; preds = %2217, %2198
  %2223 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %2223, align 4
  br label %2224

2224:                                             ; preds = %2222, %2194
  %2225 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42
  %2226 = load i32, ptr %2225, align 4
  %2227 = load i32, ptr %14, align 4
  %2228 = icmp eq i32 %2226, %2227
  br i1 %2228, label %2229, label %2232

2229:                                             ; preds = %2224
  %2230 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  %2231 = load i32, ptr %2230, align 4
  br label %2244

2232:                                             ; preds = %2224
  %2233 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2234 = load ptr, ptr %2233, align 4
  %2235 = getelementptr inbounds %struct.nvkm_fb, ptr %2234, i32 0, i32 1, i32 1
  %2236 = load ptr, ptr %2235, align 4
  %2237 = getelementptr inbounds %struct.nvkm_device, ptr %2236, i32 0, i32 11
  %2238 = load ptr, ptr %2237, align 4
  %2239 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 2
  %2240 = load i32, ptr %2239, align 4
  %2241 = getelementptr i8, ptr %2238, i32 %2240
  %2242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2241) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2243 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  store i32 %2242, ptr %2243, align 4
  br label %2244

2244:                                             ; preds = %2232, %2229
  %2245 = phi i32 [ %2231, %2229 ], [ %2242, %2232 ]
  %2246 = icmp sgt i32 %2245, -1
  br i1 %2246, label %2301, label %2247

2247:                                             ; preds = %2244
  %2248 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %2248, i32 noundef 10000) #11
  %2249 = load i32, ptr %2225, align 4
  %2250 = load i32, ptr %14, align 4
  %2251 = icmp eq i32 %2249, %2250
  br i1 %2251, label %2252, label %2255

2252:                                             ; preds = %2247
  %2253 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  %2254 = load i32, ptr %2253, align 4
  br label %2267

2255:                                             ; preds = %2247
  %2256 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2257 = load ptr, ptr %2256, align 4
  %2258 = getelementptr inbounds %struct.nvkm_fb, ptr %2257, i32 0, i32 1, i32 1
  %2259 = load ptr, ptr %2258, align 4
  %2260 = getelementptr inbounds %struct.nvkm_device, ptr %2259, i32 0, i32 11
  %2261 = load ptr, ptr %2260, align 4
  %2262 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 2
  %2263 = load i32, ptr %2262, align 4
  %2264 = getelementptr i8, ptr %2261, i32 %2263
  %2265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2264) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2266 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  store i32 %2265, ptr %2266, align 4
  br label %2267

2267:                                             ; preds = %2255, %2252
  %2268 = phi i32 [ %2254, %2252 ], [ %2265, %2255 ]
  %2269 = and i32 %2268, 2147483647
  %2270 = icmp sgt i32 %2268, -1
  br i1 %2270, label %2271, label %2275

2271:                                             ; preds = %2267
  %2272 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 1
  %2273 = load i8, ptr %2272, align 4, !range !15
  %2274 = icmp eq i8 %2273, 0
  br i1 %2274, label %2301, label %2275

2275:                                             ; preds = %2271, %2267
  %2276 = load i32, ptr %14, align 4
  store i32 %2276, ptr %2225, align 4
  %2277 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  store i32 %2269, ptr %2277, align 4
  %2278 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 4
  %2279 = load i32, ptr %2278, align 4
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2299, label %2281

2281:                                             ; preds = %2275
  %2282 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 2
  %2283 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 3
  br label %2284

2284:                                             ; preds = %2294, %2281
  %2285 = phi i32 [ 0, %2281 ], [ %2296, %2294 ]
  %2286 = phi i32 [ %2279, %2281 ], [ %2297, %2294 ]
  %2287 = and i32 %2286, 1
  %2288 = icmp eq i32 %2287, 0
  br i1 %2288, label %2294, label %2289

2289:                                             ; preds = %2284
  %2290 = load ptr, ptr %2, align 4
  %2291 = load i32, ptr %2282, align 4
  %2292 = add i32 %2291, %2285
  %2293 = load i32, ptr %2277, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2290, i32 noundef %2292, i32 noundef %2293) #11
  br label %2294

2294:                                             ; preds = %2289, %2284
  %2295 = load i32, ptr %2283, align 4
  %2296 = add i32 %2295, %2285
  %2297 = lshr i32 %2286, 1
  %2298 = icmp ult i32 %2286, 2
  br i1 %2298, label %2299, label %2284

2299:                                             ; preds = %2294, %2275
  %2300 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 42, i32 1
  store i8 0, ptr %2300, align 4
  br label %2301

2301:                                             ; preds = %2299, %2271, %2244
  %2302 = load i32, ptr %682, align 4
  %2303 = lshr i32 %2302, 2
  %2304 = and i32 %2303, 1048576
  %2305 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47
  %2306 = load i32, ptr %2305, align 4
  %2307 = load i32, ptr %14, align 4
  %2308 = icmp eq i32 %2306, %2307
  br i1 %2308, label %2309, label %2312

2309:                                             ; preds = %2301
  %2310 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 5
  %2311 = load i32, ptr %2310, align 4
  br label %2324

2312:                                             ; preds = %2301
  %2313 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2314 = load ptr, ptr %2313, align 4
  %2315 = getelementptr inbounds %struct.nvkm_fb, ptr %2314, i32 0, i32 1, i32 1
  %2316 = load ptr, ptr %2315, align 4
  %2317 = getelementptr inbounds %struct.nvkm_device, ptr %2316, i32 0, i32 11
  %2318 = load ptr, ptr %2317, align 4
  %2319 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 2
  %2320 = load i32, ptr %2319, align 4
  %2321 = getelementptr i8, ptr %2318, i32 %2320
  %2322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2321) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2323 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 5
  store i32 %2322, ptr %2323, align 4
  br label %2324

2324:                                             ; preds = %2312, %2309
  %2325 = phi i32 [ %2311, %2309 ], [ %2322, %2312 ]
  %2326 = and i32 %2325, -1048577
  %2327 = or i32 %2326, %2304
  %2328 = icmp eq i32 %2325, %2327
  br i1 %2328, label %2329, label %2333

2329:                                             ; preds = %2324
  %2330 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 1
  %2331 = load i8, ptr %2330, align 4, !range !15
  %2332 = icmp eq i8 %2331, 0
  br i1 %2332, label %2359, label %2333

2333:                                             ; preds = %2329, %2324
  %2334 = load i32, ptr %14, align 4
  store i32 %2334, ptr %2305, align 4
  %2335 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 5
  store i32 %2327, ptr %2335, align 4
  %2336 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 4
  %2337 = load i32, ptr %2336, align 4
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2357, label %2339

2339:                                             ; preds = %2333
  %2340 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 2
  %2341 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 3
  br label %2342

2342:                                             ; preds = %2352, %2339
  %2343 = phi i32 [ 0, %2339 ], [ %2354, %2352 ]
  %2344 = phi i32 [ %2337, %2339 ], [ %2355, %2352 ]
  %2345 = and i32 %2344, 1
  %2346 = icmp eq i32 %2345, 0
  br i1 %2346, label %2352, label %2347

2347:                                             ; preds = %2342
  %2348 = load ptr, ptr %2, align 4
  %2349 = load i32, ptr %2340, align 4
  %2350 = add i32 %2349, %2343
  %2351 = load i32, ptr %2335, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2348, i32 noundef %2350, i32 noundef %2351) #11
  br label %2352

2352:                                             ; preds = %2347, %2342
  %2353 = load i32, ptr %2341, align 4
  %2354 = add i32 %2353, %2343
  %2355 = lshr i32 %2344, 1
  %2356 = icmp ult i32 %2344, 2
  br i1 %2356, label %2357, label %2342

2357:                                             ; preds = %2352, %2333
  %2358 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 47, i32 1
  store i8 0, ptr %2358, align 4
  br label %2359

2359:                                             ; preds = %2357, %2329
  %2360 = load i32, ptr %682, align 4
  %2361 = lshr i32 %2360, 12
  %2362 = and i32 %2361, 12288
  %2363 = lshr i32 %2360, 9
  %2364 = and i32 %2363, 16384
  %2365 = or i32 %2362, %2364
  %2366 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44
  %2367 = load i32, ptr %2366, align 4
  %2368 = load i32, ptr %14, align 4
  %2369 = icmp eq i32 %2367, %2368
  br i1 %2369, label %2370, label %2373

2370:                                             ; preds = %2359
  %2371 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %2372 = load i32, ptr %2371, align 4
  br label %2385

2373:                                             ; preds = %2359
  %2374 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2375 = load ptr, ptr %2374, align 4
  %2376 = getelementptr inbounds %struct.nvkm_fb, ptr %2375, i32 0, i32 1, i32 1
  %2377 = load ptr, ptr %2376, align 4
  %2378 = getelementptr inbounds %struct.nvkm_device, ptr %2377, i32 0, i32 11
  %2379 = load ptr, ptr %2378, align 4
  %2380 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %2381 = load i32, ptr %2380, align 4
  %2382 = getelementptr i8, ptr %2379, i32 %2381
  %2383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2382) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2384 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %2383, ptr %2384, align 4
  br label %2385

2385:                                             ; preds = %2373, %2370
  %2386 = phi i32 [ %2372, %2370 ], [ %2383, %2373 ]
  %2387 = and i32 %2386, -28673
  %2388 = or i32 %2365, %2387
  %2389 = icmp eq i32 %2386, %2388
  br i1 %2389, label %2390, label %2394

2390:                                             ; preds = %2385
  %2391 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  %2392 = load i8, ptr %2391, align 4, !range !15
  %2393 = icmp eq i8 %2392, 0
  br i1 %2393, label %2420, label %2394

2394:                                             ; preds = %2390, %2385
  %2395 = load i32, ptr %14, align 4
  store i32 %2395, ptr %2366, align 4
  %2396 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %2388, ptr %2396, align 4
  %2397 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %2398 = load i32, ptr %2397, align 4
  %2399 = icmp eq i32 %2398, 0
  br i1 %2399, label %2418, label %2400

2400:                                             ; preds = %2394
  %2401 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %2402 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %2403

2403:                                             ; preds = %2413, %2400
  %2404 = phi i32 [ 0, %2400 ], [ %2415, %2413 ]
  %2405 = phi i32 [ %2398, %2400 ], [ %2416, %2413 ]
  %2406 = and i32 %2405, 1
  %2407 = icmp eq i32 %2406, 0
  br i1 %2407, label %2413, label %2408

2408:                                             ; preds = %2403
  %2409 = load ptr, ptr %2, align 4
  %2410 = load i32, ptr %2401, align 4
  %2411 = add i32 %2410, %2404
  %2412 = load i32, ptr %2396, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2409, i32 noundef %2411, i32 noundef %2412) #11
  br label %2413

2413:                                             ; preds = %2408, %2403
  %2414 = load i32, ptr %2402, align 4
  %2415 = add i32 %2414, %2404
  %2416 = lshr i32 %2405, 1
  %2417 = icmp ult i32 %2405, 2
  br i1 %2417, label %2418, label %2403

2418:                                             ; preds = %2413, %2394
  %2419 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  store i8 0, ptr %2419, align 4
  br label %2420

2420:                                             ; preds = %2418, %2390
  %2421 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16
  %2422 = getelementptr inbounds %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14
  %2423 = getelementptr %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14, i32 10
  %2424 = load i32, ptr %2423, align 4
  %2425 = load i32, ptr %2421, align 4
  %2426 = load i32, ptr %14, align 4
  %2427 = icmp eq i32 %2425, %2426
  br i1 %2427, label %2428, label %2431

2428:                                             ; preds = %2420
  %2429 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 5
  %2430 = load i32, ptr %2429, align 4
  br label %2443

2431:                                             ; preds = %2420
  %2432 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2433 = load ptr, ptr %2432, align 4
  %2434 = getelementptr inbounds %struct.nvkm_fb, ptr %2433, i32 0, i32 1, i32 1
  %2435 = load ptr, ptr %2434, align 4
  %2436 = getelementptr inbounds %struct.nvkm_device, ptr %2435, i32 0, i32 11
  %2437 = load ptr, ptr %2436, align 4
  %2438 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 2
  %2439 = load i32, ptr %2438, align 4
  %2440 = getelementptr i8, ptr %2437, i32 %2439
  %2441 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2440) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2442 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 5
  store i32 %2441, ptr %2442, align 4
  br label %2443

2443:                                             ; preds = %2431, %2428
  %2444 = phi i32 [ %2430, %2428 ], [ %2441, %2431 ]
  %2445 = icmp eq i32 %2444, %2424
  br i1 %2445, label %2446, label %2450

2446:                                             ; preds = %2443
  %2447 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 1
  %2448 = load i8, ptr %2447, align 4, !range !15
  %2449 = icmp eq i8 %2448, 0
  br i1 %2449, label %2476, label %2450

2450:                                             ; preds = %2446, %2443
  %2451 = load i32, ptr %14, align 4
  store i32 %2451, ptr %2421, align 4
  %2452 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 5
  store i32 %2424, ptr %2452, align 4
  %2453 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 4
  %2454 = load i32, ptr %2453, align 4
  %2455 = icmp eq i32 %2454, 0
  br i1 %2455, label %2474, label %2456

2456:                                             ; preds = %2450
  %2457 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 2
  %2458 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 3
  br label %2459

2459:                                             ; preds = %2469, %2456
  %2460 = phi i32 [ 0, %2456 ], [ %2471, %2469 ]
  %2461 = phi i32 [ %2454, %2456 ], [ %2472, %2469 ]
  %2462 = and i32 %2461, 1
  %2463 = icmp eq i32 %2462, 0
  br i1 %2463, label %2469, label %2464

2464:                                             ; preds = %2459
  %2465 = load ptr, ptr %2, align 4
  %2466 = load i32, ptr %2457, align 4
  %2467 = add i32 %2466, %2460
  %2468 = load i32, ptr %2452, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2465, i32 noundef %2467, i32 noundef %2468) #11
  br label %2469

2469:                                             ; preds = %2464, %2459
  %2470 = load i32, ptr %2458, align 4
  %2471 = add i32 %2470, %2460
  %2472 = lshr i32 %2461, 1
  %2473 = icmp ult i32 %2461, 2
  br i1 %2473, label %2474, label %2459

2474:                                             ; preds = %2469, %2450
  %2475 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 16, i32 1
  store i8 0, ptr %2475, align 4
  br label %2476

2476:                                             ; preds = %2474, %2446
  %2477 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17
  %2478 = load i32, ptr %2422, align 4
  %2479 = load i32, ptr %2477, align 4
  %2480 = load i32, ptr %14, align 4
  %2481 = icmp eq i32 %2479, %2480
  br i1 %2481, label %2482, label %2485

2482:                                             ; preds = %2476
  %2483 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 5
  %2484 = load i32, ptr %2483, align 4
  br label %2497

2485:                                             ; preds = %2476
  %2486 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2487 = load ptr, ptr %2486, align 4
  %2488 = getelementptr inbounds %struct.nvkm_fb, ptr %2487, i32 0, i32 1, i32 1
  %2489 = load ptr, ptr %2488, align 4
  %2490 = getelementptr inbounds %struct.nvkm_device, ptr %2489, i32 0, i32 11
  %2491 = load ptr, ptr %2490, align 4
  %2492 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 2
  %2493 = load i32, ptr %2492, align 4
  %2494 = getelementptr i8, ptr %2491, i32 %2493
  %2495 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2494) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2496 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 5
  store i32 %2495, ptr %2496, align 4
  br label %2497

2497:                                             ; preds = %2485, %2482
  %2498 = phi i32 [ %2484, %2482 ], [ %2495, %2485 ]
  %2499 = icmp eq i32 %2498, %2478
  br i1 %2499, label %2500, label %2504

2500:                                             ; preds = %2497
  %2501 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 1
  %2502 = load i8, ptr %2501, align 4, !range !15
  %2503 = icmp eq i8 %2502, 0
  br i1 %2503, label %2530, label %2504

2504:                                             ; preds = %2500, %2497
  %2505 = load i32, ptr %14, align 4
  store i32 %2505, ptr %2477, align 4
  %2506 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 5
  store i32 %2478, ptr %2506, align 4
  %2507 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 4
  %2508 = load i32, ptr %2507, align 4
  %2509 = icmp eq i32 %2508, 0
  br i1 %2509, label %2528, label %2510

2510:                                             ; preds = %2504
  %2511 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 2
  %2512 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 3
  br label %2513

2513:                                             ; preds = %2523, %2510
  %2514 = phi i32 [ 0, %2510 ], [ %2525, %2523 ]
  %2515 = phi i32 [ %2508, %2510 ], [ %2526, %2523 ]
  %2516 = and i32 %2515, 1
  %2517 = icmp eq i32 %2516, 0
  br i1 %2517, label %2523, label %2518

2518:                                             ; preds = %2513
  %2519 = load ptr, ptr %2, align 4
  %2520 = load i32, ptr %2511, align 4
  %2521 = add i32 %2520, %2514
  %2522 = load i32, ptr %2506, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2519, i32 noundef %2521, i32 noundef %2522) #11
  br label %2523

2523:                                             ; preds = %2518, %2513
  %2524 = load i32, ptr %2512, align 4
  %2525 = add i32 %2524, %2514
  %2526 = lshr i32 %2515, 1
  %2527 = icmp ult i32 %2515, 2
  br i1 %2527, label %2528, label %2513

2528:                                             ; preds = %2523, %2504
  %2529 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 17, i32 1
  store i8 0, ptr %2529, align 4
  br label %2530

2530:                                             ; preds = %2528, %2500
  %2531 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18
  %2532 = getelementptr %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14, i32 1
  %2533 = load i32, ptr %2532, align 4
  %2534 = load i32, ptr %2531, align 4
  %2535 = load i32, ptr %14, align 4
  %2536 = icmp eq i32 %2534, %2535
  br i1 %2536, label %2537, label %2540

2537:                                             ; preds = %2530
  %2538 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 5
  %2539 = load i32, ptr %2538, align 4
  br label %2552

2540:                                             ; preds = %2530
  %2541 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2542 = load ptr, ptr %2541, align 4
  %2543 = getelementptr inbounds %struct.nvkm_fb, ptr %2542, i32 0, i32 1, i32 1
  %2544 = load ptr, ptr %2543, align 4
  %2545 = getelementptr inbounds %struct.nvkm_device, ptr %2544, i32 0, i32 11
  %2546 = load ptr, ptr %2545, align 4
  %2547 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 2
  %2548 = load i32, ptr %2547, align 4
  %2549 = getelementptr i8, ptr %2546, i32 %2548
  %2550 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2549) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2551 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 5
  store i32 %2550, ptr %2551, align 4
  br label %2552

2552:                                             ; preds = %2540, %2537
  %2553 = phi i32 [ %2539, %2537 ], [ %2550, %2540 ]
  %2554 = icmp eq i32 %2553, %2533
  br i1 %2554, label %2555, label %2559

2555:                                             ; preds = %2552
  %2556 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 1
  %2557 = load i8, ptr %2556, align 4, !range !15
  %2558 = icmp eq i8 %2557, 0
  br i1 %2558, label %2585, label %2559

2559:                                             ; preds = %2555, %2552
  %2560 = load i32, ptr %14, align 4
  store i32 %2560, ptr %2531, align 4
  %2561 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 5
  store i32 %2533, ptr %2561, align 4
  %2562 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 4
  %2563 = load i32, ptr %2562, align 4
  %2564 = icmp eq i32 %2563, 0
  br i1 %2564, label %2583, label %2565

2565:                                             ; preds = %2559
  %2566 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 2
  %2567 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 3
  br label %2568

2568:                                             ; preds = %2578, %2565
  %2569 = phi i32 [ 0, %2565 ], [ %2580, %2578 ]
  %2570 = phi i32 [ %2563, %2565 ], [ %2581, %2578 ]
  %2571 = and i32 %2570, 1
  %2572 = icmp eq i32 %2571, 0
  br i1 %2572, label %2578, label %2573

2573:                                             ; preds = %2568
  %2574 = load ptr, ptr %2, align 4
  %2575 = load i32, ptr %2566, align 4
  %2576 = add i32 %2575, %2569
  %2577 = load i32, ptr %2561, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2574, i32 noundef %2576, i32 noundef %2577) #11
  br label %2578

2578:                                             ; preds = %2573, %2568
  %2579 = load i32, ptr %2567, align 4
  %2580 = add i32 %2579, %2569
  %2581 = lshr i32 %2570, 1
  %2582 = icmp ult i32 %2570, 2
  br i1 %2582, label %2583, label %2568

2583:                                             ; preds = %2578, %2559
  %2584 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 1
  store i8 0, ptr %2584, align 4
  br label %2585

2585:                                             ; preds = %2583, %2555
  %2586 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19
  %2587 = getelementptr %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14, i32 2
  %2588 = load i32, ptr %2587, align 4
  %2589 = load i32, ptr %2586, align 4
  %2590 = load i32, ptr %14, align 4
  %2591 = icmp eq i32 %2589, %2590
  br i1 %2591, label %2592, label %2595

2592:                                             ; preds = %2585
  %2593 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 5
  %2594 = load i32, ptr %2593, align 4
  br label %2607

2595:                                             ; preds = %2585
  %2596 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2597 = load ptr, ptr %2596, align 4
  %2598 = getelementptr inbounds %struct.nvkm_fb, ptr %2597, i32 0, i32 1, i32 1
  %2599 = load ptr, ptr %2598, align 4
  %2600 = getelementptr inbounds %struct.nvkm_device, ptr %2599, i32 0, i32 11
  %2601 = load ptr, ptr %2600, align 4
  %2602 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 2
  %2603 = load i32, ptr %2602, align 4
  %2604 = getelementptr i8, ptr %2601, i32 %2603
  %2605 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2604) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2606 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 5
  store i32 %2605, ptr %2606, align 4
  br label %2607

2607:                                             ; preds = %2595, %2592
  %2608 = phi i32 [ %2594, %2592 ], [ %2605, %2595 ]
  %2609 = icmp eq i32 %2608, %2588
  br i1 %2609, label %2610, label %2614

2610:                                             ; preds = %2607
  %2611 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 1
  %2612 = load i8, ptr %2611, align 4, !range !15
  %2613 = icmp eq i8 %2612, 0
  br i1 %2613, label %2640, label %2614

2614:                                             ; preds = %2610, %2607
  %2615 = load i32, ptr %14, align 4
  store i32 %2615, ptr %2586, align 4
  %2616 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 5
  store i32 %2588, ptr %2616, align 4
  %2617 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 4
  %2618 = load i32, ptr %2617, align 4
  %2619 = icmp eq i32 %2618, 0
  br i1 %2619, label %2638, label %2620

2620:                                             ; preds = %2614
  %2621 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 2
  %2622 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 3
  br label %2623

2623:                                             ; preds = %2633, %2620
  %2624 = phi i32 [ 0, %2620 ], [ %2635, %2633 ]
  %2625 = phi i32 [ %2618, %2620 ], [ %2636, %2633 ]
  %2626 = and i32 %2625, 1
  %2627 = icmp eq i32 %2626, 0
  br i1 %2627, label %2633, label %2628

2628:                                             ; preds = %2623
  %2629 = load ptr, ptr %2, align 4
  %2630 = load i32, ptr %2621, align 4
  %2631 = add i32 %2630, %2624
  %2632 = load i32, ptr %2616, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2629, i32 noundef %2631, i32 noundef %2632) #11
  br label %2633

2633:                                             ; preds = %2628, %2623
  %2634 = load i32, ptr %2622, align 4
  %2635 = add i32 %2634, %2624
  %2636 = lshr i32 %2625, 1
  %2637 = icmp ult i32 %2625, 2
  br i1 %2637, label %2638, label %2623

2638:                                             ; preds = %2633, %2614
  %2639 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 19, i32 1
  store i8 0, ptr %2639, align 4
  br label %2640

2640:                                             ; preds = %2638, %2610
  %2641 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20
  %2642 = getelementptr %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14, i32 3
  %2643 = load i32, ptr %2642, align 4
  %2644 = load i32, ptr %2641, align 4
  %2645 = load i32, ptr %14, align 4
  %2646 = icmp eq i32 %2644, %2645
  br i1 %2646, label %2647, label %2650

2647:                                             ; preds = %2640
  %2648 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 5
  %2649 = load i32, ptr %2648, align 4
  br label %2662

2650:                                             ; preds = %2640
  %2651 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2652 = load ptr, ptr %2651, align 4
  %2653 = getelementptr inbounds %struct.nvkm_fb, ptr %2652, i32 0, i32 1, i32 1
  %2654 = load ptr, ptr %2653, align 4
  %2655 = getelementptr inbounds %struct.nvkm_device, ptr %2654, i32 0, i32 11
  %2656 = load ptr, ptr %2655, align 4
  %2657 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 2
  %2658 = load i32, ptr %2657, align 4
  %2659 = getelementptr i8, ptr %2656, i32 %2658
  %2660 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2659) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2661 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 5
  store i32 %2660, ptr %2661, align 4
  br label %2662

2662:                                             ; preds = %2650, %2647
  %2663 = phi i32 [ %2649, %2647 ], [ %2660, %2650 ]
  %2664 = icmp eq i32 %2663, %2643
  br i1 %2664, label %2665, label %2669

2665:                                             ; preds = %2662
  %2666 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 1
  %2667 = load i8, ptr %2666, align 4, !range !15
  %2668 = icmp eq i8 %2667, 0
  br i1 %2668, label %2695, label %2669

2669:                                             ; preds = %2665, %2662
  %2670 = load i32, ptr %14, align 4
  store i32 %2670, ptr %2641, align 4
  %2671 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 5
  store i32 %2643, ptr %2671, align 4
  %2672 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 4
  %2673 = load i32, ptr %2672, align 4
  %2674 = icmp eq i32 %2673, 0
  br i1 %2674, label %2693, label %2675

2675:                                             ; preds = %2669
  %2676 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 2
  %2677 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 3
  br label %2678

2678:                                             ; preds = %2688, %2675
  %2679 = phi i32 [ 0, %2675 ], [ %2690, %2688 ]
  %2680 = phi i32 [ %2673, %2675 ], [ %2691, %2688 ]
  %2681 = and i32 %2680, 1
  %2682 = icmp eq i32 %2681, 0
  br i1 %2682, label %2688, label %2683

2683:                                             ; preds = %2678
  %2684 = load ptr, ptr %2, align 4
  %2685 = load i32, ptr %2676, align 4
  %2686 = add i32 %2685, %2679
  %2687 = load i32, ptr %2671, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2684, i32 noundef %2686, i32 noundef %2687) #11
  br label %2688

2688:                                             ; preds = %2683, %2678
  %2689 = load i32, ptr %2677, align 4
  %2690 = add i32 %2689, %2679
  %2691 = lshr i32 %2680, 1
  %2692 = icmp ult i32 %2680, 2
  br i1 %2692, label %2693, label %2678

2693:                                             ; preds = %2688, %2669
  %2694 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 20, i32 1
  store i8 0, ptr %2694, align 4
  br label %2695

2695:                                             ; preds = %2693, %2665
  %2696 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21
  %2697 = getelementptr %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14, i32 4
  %2698 = load i32, ptr %2697, align 4
  %2699 = load i32, ptr %2696, align 4
  %2700 = load i32, ptr %14, align 4
  %2701 = icmp eq i32 %2699, %2700
  br i1 %2701, label %2702, label %2705

2702:                                             ; preds = %2695
  %2703 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 5
  %2704 = load i32, ptr %2703, align 4
  br label %2717

2705:                                             ; preds = %2695
  %2706 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2707 = load ptr, ptr %2706, align 4
  %2708 = getelementptr inbounds %struct.nvkm_fb, ptr %2707, i32 0, i32 1, i32 1
  %2709 = load ptr, ptr %2708, align 4
  %2710 = getelementptr inbounds %struct.nvkm_device, ptr %2709, i32 0, i32 11
  %2711 = load ptr, ptr %2710, align 4
  %2712 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 2
  %2713 = load i32, ptr %2712, align 4
  %2714 = getelementptr i8, ptr %2711, i32 %2713
  %2715 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2714) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2716 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 5
  store i32 %2715, ptr %2716, align 4
  br label %2717

2717:                                             ; preds = %2705, %2702
  %2718 = phi i32 [ %2704, %2702 ], [ %2715, %2705 ]
  %2719 = icmp eq i32 %2718, %2698
  br i1 %2719, label %2720, label %2724

2720:                                             ; preds = %2717
  %2721 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 1
  %2722 = load i8, ptr %2721, align 4, !range !15
  %2723 = icmp eq i8 %2722, 0
  br i1 %2723, label %2750, label %2724

2724:                                             ; preds = %2720, %2717
  %2725 = load i32, ptr %14, align 4
  store i32 %2725, ptr %2696, align 4
  %2726 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 5
  store i32 %2698, ptr %2726, align 4
  %2727 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 4
  %2728 = load i32, ptr %2727, align 4
  %2729 = icmp eq i32 %2728, 0
  br i1 %2729, label %2748, label %2730

2730:                                             ; preds = %2724
  %2731 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 2
  %2732 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 3
  br label %2733

2733:                                             ; preds = %2743, %2730
  %2734 = phi i32 [ 0, %2730 ], [ %2745, %2743 ]
  %2735 = phi i32 [ %2728, %2730 ], [ %2746, %2743 ]
  %2736 = and i32 %2735, 1
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2743, label %2738

2738:                                             ; preds = %2733
  %2739 = load ptr, ptr %2, align 4
  %2740 = load i32, ptr %2731, align 4
  %2741 = add i32 %2740, %2734
  %2742 = load i32, ptr %2726, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2739, i32 noundef %2741, i32 noundef %2742) #11
  br label %2743

2743:                                             ; preds = %2738, %2733
  %2744 = load i32, ptr %2732, align 4
  %2745 = add i32 %2744, %2734
  %2746 = lshr i32 %2735, 1
  %2747 = icmp ult i32 %2735, 2
  br i1 %2747, label %2748, label %2733

2748:                                             ; preds = %2743, %2724
  %2749 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 21, i32 1
  store i8 0, ptr %2749, align 4
  br label %2750

2750:                                             ; preds = %2748, %2720
  %2751 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22
  %2752 = getelementptr %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14, i32 5
  %2753 = load i32, ptr %2752, align 4
  %2754 = load i32, ptr %2751, align 4
  %2755 = load i32, ptr %14, align 4
  %2756 = icmp eq i32 %2754, %2755
  br i1 %2756, label %2757, label %2760

2757:                                             ; preds = %2750
  %2758 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 5
  %2759 = load i32, ptr %2758, align 4
  br label %2772

2760:                                             ; preds = %2750
  %2761 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2762 = load ptr, ptr %2761, align 4
  %2763 = getelementptr inbounds %struct.nvkm_fb, ptr %2762, i32 0, i32 1, i32 1
  %2764 = load ptr, ptr %2763, align 4
  %2765 = getelementptr inbounds %struct.nvkm_device, ptr %2764, i32 0, i32 11
  %2766 = load ptr, ptr %2765, align 4
  %2767 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 2
  %2768 = load i32, ptr %2767, align 4
  %2769 = getelementptr i8, ptr %2766, i32 %2768
  %2770 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2769) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2771 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 5
  store i32 %2770, ptr %2771, align 4
  br label %2772

2772:                                             ; preds = %2760, %2757
  %2773 = phi i32 [ %2759, %2757 ], [ %2770, %2760 ]
  %2774 = icmp eq i32 %2773, %2753
  br i1 %2774, label %2775, label %2779

2775:                                             ; preds = %2772
  %2776 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 1
  %2777 = load i8, ptr %2776, align 4, !range !15
  %2778 = icmp eq i8 %2777, 0
  br i1 %2778, label %2805, label %2779

2779:                                             ; preds = %2775, %2772
  %2780 = load i32, ptr %14, align 4
  store i32 %2780, ptr %2751, align 4
  %2781 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 5
  store i32 %2753, ptr %2781, align 4
  %2782 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 4
  %2783 = load i32, ptr %2782, align 4
  %2784 = icmp eq i32 %2783, 0
  br i1 %2784, label %2803, label %2785

2785:                                             ; preds = %2779
  %2786 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 2
  %2787 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 3
  br label %2788

2788:                                             ; preds = %2798, %2785
  %2789 = phi i32 [ 0, %2785 ], [ %2800, %2798 ]
  %2790 = phi i32 [ %2783, %2785 ], [ %2801, %2798 ]
  %2791 = and i32 %2790, 1
  %2792 = icmp eq i32 %2791, 0
  br i1 %2792, label %2798, label %2793

2793:                                             ; preds = %2788
  %2794 = load ptr, ptr %2, align 4
  %2795 = load i32, ptr %2786, align 4
  %2796 = add i32 %2795, %2789
  %2797 = load i32, ptr %2781, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2794, i32 noundef %2796, i32 noundef %2797) #11
  br label %2798

2798:                                             ; preds = %2793, %2788
  %2799 = load i32, ptr %2787, align 4
  %2800 = add i32 %2799, %2789
  %2801 = lshr i32 %2790, 1
  %2802 = icmp ult i32 %2790, 2
  br i1 %2802, label %2803, label %2788

2803:                                             ; preds = %2798, %2779
  %2804 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 22, i32 1
  store i8 0, ptr %2804, align 4
  br label %2805

2805:                                             ; preds = %2803, %2775
  %2806 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23
  %2807 = getelementptr %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14, i32 6
  %2808 = load i32, ptr %2807, align 4
  %2809 = load i32, ptr %2806, align 4
  %2810 = load i32, ptr %14, align 4
  %2811 = icmp eq i32 %2809, %2810
  br i1 %2811, label %2812, label %2815

2812:                                             ; preds = %2805
  %2813 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 5
  %2814 = load i32, ptr %2813, align 4
  br label %2827

2815:                                             ; preds = %2805
  %2816 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2817 = load ptr, ptr %2816, align 4
  %2818 = getelementptr inbounds %struct.nvkm_fb, ptr %2817, i32 0, i32 1, i32 1
  %2819 = load ptr, ptr %2818, align 4
  %2820 = getelementptr inbounds %struct.nvkm_device, ptr %2819, i32 0, i32 11
  %2821 = load ptr, ptr %2820, align 4
  %2822 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 2
  %2823 = load i32, ptr %2822, align 4
  %2824 = getelementptr i8, ptr %2821, i32 %2823
  %2825 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2824) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2826 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 5
  store i32 %2825, ptr %2826, align 4
  br label %2827

2827:                                             ; preds = %2815, %2812
  %2828 = phi i32 [ %2814, %2812 ], [ %2825, %2815 ]
  %2829 = icmp eq i32 %2828, %2808
  br i1 %2829, label %2830, label %2834

2830:                                             ; preds = %2827
  %2831 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 1
  %2832 = load i8, ptr %2831, align 4, !range !15
  %2833 = icmp eq i8 %2832, 0
  br i1 %2833, label %2860, label %2834

2834:                                             ; preds = %2830, %2827
  %2835 = load i32, ptr %14, align 4
  store i32 %2835, ptr %2806, align 4
  %2836 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 5
  store i32 %2808, ptr %2836, align 4
  %2837 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 4
  %2838 = load i32, ptr %2837, align 4
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %2858, label %2840

2840:                                             ; preds = %2834
  %2841 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 2
  %2842 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 3
  br label %2843

2843:                                             ; preds = %2853, %2840
  %2844 = phi i32 [ 0, %2840 ], [ %2855, %2853 ]
  %2845 = phi i32 [ %2838, %2840 ], [ %2856, %2853 ]
  %2846 = and i32 %2845, 1
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %2853, label %2848

2848:                                             ; preds = %2843
  %2849 = load ptr, ptr %2, align 4
  %2850 = load i32, ptr %2841, align 4
  %2851 = add i32 %2850, %2844
  %2852 = load i32, ptr %2836, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2849, i32 noundef %2851, i32 noundef %2852) #11
  br label %2853

2853:                                             ; preds = %2848, %2843
  %2854 = load i32, ptr %2842, align 4
  %2855 = add i32 %2854, %2844
  %2856 = lshr i32 %2845, 1
  %2857 = icmp ult i32 %2845, 2
  br i1 %2857, label %2858, label %2843

2858:                                             ; preds = %2853, %2834
  %2859 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 23, i32 1
  store i8 0, ptr %2859, align 4
  br label %2860

2860:                                             ; preds = %2858, %2830
  %2861 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24
  %2862 = getelementptr %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14, i32 7
  %2863 = load i32, ptr %2862, align 4
  %2864 = load i32, ptr %2861, align 4
  %2865 = load i32, ptr %14, align 4
  %2866 = icmp eq i32 %2864, %2865
  br i1 %2866, label %2867, label %2870

2867:                                             ; preds = %2860
  %2868 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 5
  %2869 = load i32, ptr %2868, align 4
  br label %2882

2870:                                             ; preds = %2860
  %2871 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2872 = load ptr, ptr %2871, align 4
  %2873 = getelementptr inbounds %struct.nvkm_fb, ptr %2872, i32 0, i32 1, i32 1
  %2874 = load ptr, ptr %2873, align 4
  %2875 = getelementptr inbounds %struct.nvkm_device, ptr %2874, i32 0, i32 11
  %2876 = load ptr, ptr %2875, align 4
  %2877 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 2
  %2878 = load i32, ptr %2877, align 4
  %2879 = getelementptr i8, ptr %2876, i32 %2878
  %2880 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2879) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2881 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 5
  store i32 %2880, ptr %2881, align 4
  br label %2882

2882:                                             ; preds = %2870, %2867
  %2883 = phi i32 [ %2869, %2867 ], [ %2880, %2870 ]
  %2884 = icmp eq i32 %2883, %2863
  br i1 %2884, label %2885, label %2889

2885:                                             ; preds = %2882
  %2886 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 1
  %2887 = load i8, ptr %2886, align 4, !range !15
  %2888 = icmp eq i8 %2887, 0
  br i1 %2888, label %2915, label %2889

2889:                                             ; preds = %2885, %2882
  %2890 = load i32, ptr %14, align 4
  store i32 %2890, ptr %2861, align 4
  %2891 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 5
  store i32 %2863, ptr %2891, align 4
  %2892 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 4
  %2893 = load i32, ptr %2892, align 4
  %2894 = icmp eq i32 %2893, 0
  br i1 %2894, label %2913, label %2895

2895:                                             ; preds = %2889
  %2896 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 2
  %2897 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 3
  br label %2898

2898:                                             ; preds = %2908, %2895
  %2899 = phi i32 [ 0, %2895 ], [ %2910, %2908 ]
  %2900 = phi i32 [ %2893, %2895 ], [ %2911, %2908 ]
  %2901 = and i32 %2900, 1
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %2908, label %2903

2903:                                             ; preds = %2898
  %2904 = load ptr, ptr %2, align 4
  %2905 = load i32, ptr %2896, align 4
  %2906 = add i32 %2905, %2899
  %2907 = load i32, ptr %2891, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2904, i32 noundef %2906, i32 noundef %2907) #11
  br label %2908

2908:                                             ; preds = %2903, %2898
  %2909 = load i32, ptr %2897, align 4
  %2910 = add i32 %2909, %2899
  %2911 = lshr i32 %2900, 1
  %2912 = icmp ult i32 %2900, 2
  br i1 %2912, label %2913, label %2898

2913:                                             ; preds = %2908, %2889
  %2914 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 24, i32 1
  store i8 0, ptr %2914, align 4
  br label %2915

2915:                                             ; preds = %2913, %2885
  %2916 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25
  %2917 = getelementptr %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14, i32 8
  %2918 = load i32, ptr %2917, align 4
  %2919 = load i32, ptr %2916, align 4
  %2920 = load i32, ptr %14, align 4
  %2921 = icmp eq i32 %2919, %2920
  br i1 %2921, label %2922, label %2925

2922:                                             ; preds = %2915
  %2923 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 5
  %2924 = load i32, ptr %2923, align 4
  br label %2937

2925:                                             ; preds = %2915
  %2926 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2927 = load ptr, ptr %2926, align 4
  %2928 = getelementptr inbounds %struct.nvkm_fb, ptr %2927, i32 0, i32 1, i32 1
  %2929 = load ptr, ptr %2928, align 4
  %2930 = getelementptr inbounds %struct.nvkm_device, ptr %2929, i32 0, i32 11
  %2931 = load ptr, ptr %2930, align 4
  %2932 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 2
  %2933 = load i32, ptr %2932, align 4
  %2934 = getelementptr i8, ptr %2931, i32 %2933
  %2935 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2934) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2936 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 5
  store i32 %2935, ptr %2936, align 4
  br label %2937

2937:                                             ; preds = %2925, %2922
  %2938 = phi i32 [ %2924, %2922 ], [ %2935, %2925 ]
  %2939 = icmp eq i32 %2938, %2918
  br i1 %2939, label %2940, label %2944

2940:                                             ; preds = %2937
  %2941 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 1
  %2942 = load i8, ptr %2941, align 4, !range !15
  %2943 = icmp eq i8 %2942, 0
  br i1 %2943, label %2970, label %2944

2944:                                             ; preds = %2940, %2937
  %2945 = load i32, ptr %14, align 4
  store i32 %2945, ptr %2916, align 4
  %2946 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 5
  store i32 %2918, ptr %2946, align 4
  %2947 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 4
  %2948 = load i32, ptr %2947, align 4
  %2949 = icmp eq i32 %2948, 0
  br i1 %2949, label %2968, label %2950

2950:                                             ; preds = %2944
  %2951 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 2
  %2952 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 3
  br label %2953

2953:                                             ; preds = %2963, %2950
  %2954 = phi i32 [ 0, %2950 ], [ %2965, %2963 ]
  %2955 = phi i32 [ %2948, %2950 ], [ %2966, %2963 ]
  %2956 = and i32 %2955, 1
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %2963, label %2958

2958:                                             ; preds = %2953
  %2959 = load ptr, ptr %2, align 4
  %2960 = load i32, ptr %2951, align 4
  %2961 = add i32 %2960, %2954
  %2962 = load i32, ptr %2946, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %2959, i32 noundef %2961, i32 noundef %2962) #11
  br label %2963

2963:                                             ; preds = %2958, %2953
  %2964 = load i32, ptr %2952, align 4
  %2965 = add i32 %2964, %2954
  %2966 = lshr i32 %2955, 1
  %2967 = icmp ult i32 %2955, 2
  br i1 %2967, label %2968, label %2953

2968:                                             ; preds = %2963, %2944
  %2969 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 25, i32 1
  store i8 0, ptr %2969, align 4
  br label %2970

2970:                                             ; preds = %2968, %2940
  %2971 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26
  %2972 = getelementptr %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 14, i32 9
  %2973 = load i32, ptr %2972, align 4
  %2974 = load i32, ptr %2971, align 4
  %2975 = load i32, ptr %14, align 4
  %2976 = icmp eq i32 %2974, %2975
  br i1 %2976, label %2977, label %2980

2977:                                             ; preds = %2970
  %2978 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 5
  %2979 = load i32, ptr %2978, align 4
  br label %2992

2980:                                             ; preds = %2970
  %2981 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %2982 = load ptr, ptr %2981, align 4
  %2983 = getelementptr inbounds %struct.nvkm_fb, ptr %2982, i32 0, i32 1, i32 1
  %2984 = load ptr, ptr %2983, align 4
  %2985 = getelementptr inbounds %struct.nvkm_device, ptr %2984, i32 0, i32 11
  %2986 = load ptr, ptr %2985, align 4
  %2987 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 2
  %2988 = load i32, ptr %2987, align 4
  %2989 = getelementptr i8, ptr %2986, i32 %2988
  %2990 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2989) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %2991 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 5
  store i32 %2990, ptr %2991, align 4
  br label %2992

2992:                                             ; preds = %2980, %2977
  %2993 = phi i32 [ %2979, %2977 ], [ %2990, %2980 ]
  %2994 = icmp eq i32 %2993, %2973
  br i1 %2994, label %2995, label %2999

2995:                                             ; preds = %2992
  %2996 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 1
  %2997 = load i8, ptr %2996, align 4, !range !15
  %2998 = icmp eq i8 %2997, 0
  br i1 %2998, label %3025, label %2999

2999:                                             ; preds = %2995, %2992
  %3000 = load i32, ptr %14, align 4
  store i32 %3000, ptr %2971, align 4
  %3001 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 5
  store i32 %2973, ptr %3001, align 4
  %3002 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 4
  %3003 = load i32, ptr %3002, align 4
  %3004 = icmp eq i32 %3003, 0
  br i1 %3004, label %3023, label %3005

3005:                                             ; preds = %2999
  %3006 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 2
  %3007 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 3
  br label %3008

3008:                                             ; preds = %3018, %3005
  %3009 = phi i32 [ 0, %3005 ], [ %3020, %3018 ]
  %3010 = phi i32 [ %3003, %3005 ], [ %3021, %3018 ]
  %3011 = and i32 %3010, 1
  %3012 = icmp eq i32 %3011, 0
  br i1 %3012, label %3018, label %3013

3013:                                             ; preds = %3008
  %3014 = load ptr, ptr %2, align 4
  %3015 = load i32, ptr %3006, align 4
  %3016 = add i32 %3015, %3009
  %3017 = load i32, ptr %3001, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3014, i32 noundef %3016, i32 noundef %3017) #11
  br label %3018

3018:                                             ; preds = %3013, %3008
  %3019 = load i32, ptr %3007, align 4
  %3020 = add i32 %3019, %3009
  %3021 = lshr i32 %3010, 1
  %3022 = icmp ult i32 %3010, 2
  br i1 %3022, label %3023, label %3008

3023:                                             ; preds = %3018, %2999
  %3024 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 26, i32 1
  store i8 0, ptr %3024, align 4
  br label %3025

3025:                                             ; preds = %3023, %2995
  %3026 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 6, i32 11
  %3027 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 6, i32 11, i32 0, i32 1
  %3028 = load i32, ptr %3027, align 4
  %3029 = and i32 %3028, 134217728
  %3030 = icmp eq i32 %3029, 0
  br i1 %3030, label %3035, label %3031

3031:                                             ; preds = %3025
  %3032 = load i32, ptr %682, align 4
  %3033 = lshr i32 %3032, 3
  %3034 = and i32 %3033, 16777216
  br label %3035

3035:                                             ; preds = %3031, %3025
  %3036 = phi i32 [ %3034, %3031 ], [ 0, %3025 ]
  %3037 = phi i32 [ -16777217, %3031 ], [ -1, %3025 ]
  %3038 = load i32, ptr %300, align 4
  %3039 = load i32, ptr %14, align 4
  %3040 = icmp eq i32 %3038, %3039
  br i1 %3040, label %3041, label %3044

3041:                                             ; preds = %3035
  %3042 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %3043 = load i32, ptr %3042, align 4
  br label %3056

3044:                                             ; preds = %3035
  %3045 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3046 = load ptr, ptr %3045, align 4
  %3047 = getelementptr inbounds %struct.nvkm_fb, ptr %3046, i32 0, i32 1, i32 1
  %3048 = load ptr, ptr %3047, align 4
  %3049 = getelementptr inbounds %struct.nvkm_device, ptr %3048, i32 0, i32 11
  %3050 = load ptr, ptr %3049, align 4
  %3051 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %3052 = load i32, ptr %3051, align 4
  %3053 = getelementptr i8, ptr %3050, i32 %3052
  %3054 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3053) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3055 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %3054, ptr %3055, align 4
  br label %3056

3056:                                             ; preds = %3044, %3041
  %3057 = phi i32 [ %3043, %3041 ], [ %3054, %3044 ]
  %3058 = and i32 %3057, %3037
  %3059 = or i32 %3058, %3036
  %3060 = icmp eq i32 %3057, %3059
  br i1 %3060, label %3061, label %3065

3061:                                             ; preds = %3056
  %3062 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %3063 = load i8, ptr %3062, align 4, !range !15
  %3064 = icmp eq i8 %3063, 0
  br i1 %3064, label %3091, label %3065

3065:                                             ; preds = %3061, %3056
  %3066 = load i32, ptr %14, align 4
  store i32 %3066, ptr %300, align 4
  %3067 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %3059, ptr %3067, align 4
  %3068 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %3069 = load i32, ptr %3068, align 4
  %3070 = icmp eq i32 %3069, 0
  br i1 %3070, label %3089, label %3071

3071:                                             ; preds = %3065
  %3072 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %3073 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %3074

3074:                                             ; preds = %3084, %3071
  %3075 = phi i32 [ 0, %3071 ], [ %3086, %3084 ]
  %3076 = phi i32 [ %3069, %3071 ], [ %3087, %3084 ]
  %3077 = and i32 %3076, 1
  %3078 = icmp eq i32 %3077, 0
  br i1 %3078, label %3084, label %3079

3079:                                             ; preds = %3074
  %3080 = load ptr, ptr %2, align 4
  %3081 = load i32, ptr %3072, align 4
  %3082 = add i32 %3081, %3075
  %3083 = load i32, ptr %3067, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3080, i32 noundef %3082, i32 noundef %3083) #11
  br label %3084

3084:                                             ; preds = %3079, %3074
  %3085 = load i32, ptr %3073, align 4
  %3086 = add i32 %3085, %3075
  %3087 = lshr i32 %3076, 1
  %3088 = icmp ult i32 %3076, 2
  br i1 %3088, label %3089, label %3074

3089:                                             ; preds = %3084, %3065
  %3090 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %3090, align 4
  br label %3091

3091:                                             ; preds = %3089, %3061
  %3092 = load i32, ptr %3026, align 8
  %3093 = and i32 %3092, 384
  %3094 = icmp eq i32 %3093, 0
  br i1 %3094, label %3099, label %3095

3095:                                             ; preds = %3091
  %3096 = load i32, ptr %5, align 4
  %3097 = shl i32 %3096, 1
  %3098 = and i32 %3097, 768
  br label %3099

3099:                                             ; preds = %3095, %3091
  %3100 = phi i32 [ %3098, %3095 ], [ 0, %3091 ]
  %3101 = phi i32 [ 768, %3095 ], [ 0, %3091 ]
  %3102 = and i32 %3092, 16
  %3103 = icmp eq i32 %3102, 0
  br i1 %3103, label %3111, label %3104

3104:                                             ; preds = %3099
  %3105 = load i32, ptr %5, align 4
  %3106 = and i32 %3105, 16
  %3107 = icmp eq i32 %3106, 0
  %3108 = or i32 %3100, 1879048192
  %3109 = select i1 %3107, i32 %3100, i32 %3108
  %3110 = or i32 %3101, 1879048192
  br label %3111

3111:                                             ; preds = %3104, %3099
  %3112 = phi i32 [ %3109, %3104 ], [ %3100, %3099 ]
  %3113 = phi i32 [ %3110, %3104 ], [ %3101, %3099 ]
  %3114 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 31
  %3115 = load i32, ptr %3114, align 4
  %3116 = load i32, ptr %14, align 4
  %3117 = icmp eq i32 %3115, %3116
  br i1 %3117, label %3118, label %3121

3118:                                             ; preds = %3111
  %3119 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 31, i32 5
  %3120 = load i32, ptr %3119, align 4
  br label %3133

3121:                                             ; preds = %3111
  %3122 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3123 = load ptr, ptr %3122, align 4
  %3124 = getelementptr inbounds %struct.nvkm_fb, ptr %3123, i32 0, i32 1, i32 1
  %3125 = load ptr, ptr %3124, align 4
  %3126 = getelementptr inbounds %struct.nvkm_device, ptr %3125, i32 0, i32 11
  %3127 = load ptr, ptr %3126, align 4
  %3128 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 31, i32 2
  %3129 = load i32, ptr %3128, align 4
  %3130 = getelementptr i8, ptr %3127, i32 %3129
  %3131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3130) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3132 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 31, i32 5
  store i32 %3131, ptr %3132, align 4
  br label %3133

3133:                                             ; preds = %3121, %3118
  %3134 = phi i32 [ %3120, %3118 ], [ %3131, %3121 ]
  %3135 = xor i32 %3113, -1
  %3136 = and i32 %3134, %3135
  %3137 = or i32 %3136, %3112
  %3138 = icmp eq i32 %3134, %3137
  br i1 %3138, label %3139, label %3143

3139:                                             ; preds = %3133
  %3140 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 31, i32 1
  %3141 = load i8, ptr %3140, align 4, !range !15
  %3142 = icmp eq i8 %3141, 0
  br i1 %3142, label %3169, label %3143

3143:                                             ; preds = %3139, %3133
  %3144 = load i32, ptr %14, align 4
  store i32 %3144, ptr %3114, align 4
  %3145 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 31, i32 5
  store i32 %3137, ptr %3145, align 4
  %3146 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 31, i32 4
  %3147 = load i32, ptr %3146, align 4
  %3148 = icmp eq i32 %3147, 0
  br i1 %3148, label %3167, label %3149

3149:                                             ; preds = %3143
  %3150 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 31, i32 2
  %3151 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 31, i32 3
  br label %3152

3152:                                             ; preds = %3162, %3149
  %3153 = phi i32 [ 0, %3149 ], [ %3164, %3162 ]
  %3154 = phi i32 [ %3147, %3149 ], [ %3165, %3162 ]
  %3155 = and i32 %3154, 1
  %3156 = icmp eq i32 %3155, 0
  br i1 %3156, label %3162, label %3157

3157:                                             ; preds = %3152
  %3158 = load ptr, ptr %2, align 4
  %3159 = load i32, ptr %3150, align 4
  %3160 = add i32 %3159, %3153
  %3161 = load i32, ptr %3145, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3158, i32 noundef %3160, i32 noundef %3161) #11
  br label %3162

3162:                                             ; preds = %3157, %3152
  %3163 = load i32, ptr %3151, align 4
  %3164 = add i32 %3163, %3153
  %3165 = lshr i32 %3154, 1
  %3166 = icmp ult i32 %3154, 2
  br i1 %3166, label %3167, label %3152

3167:                                             ; preds = %3162, %3143
  %3168 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 31, i32 1
  store i8 0, ptr %3168, align 4
  br label %3169

3169:                                             ; preds = %3167, %3139
  %3170 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 6, i32 15
  %3171 = load i64, ptr %3170, align 8
  %3172 = and i64 %3171, 469762048
  %3173 = icmp eq i64 %3172, 0
  br i1 %3173, label %3180, label %3174

3174:                                             ; preds = %3169
  %3175 = getelementptr inbounds %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 15
  %3176 = load i64, ptr %3175, align 4
  %3177 = trunc i64 %3176 to i32
  %3178 = shl i32 %3177, 2
  %3179 = and i32 %3178, 1879048192
  br label %3180

3180:                                             ; preds = %3174, %3169
  %3181 = phi i32 [ %3179, %3174 ], [ 0, %3169 ]
  %3182 = phi i32 [ 1879048192, %3174 ], [ 0, %3169 ]
  %3183 = load i32, ptr %3026, align 8
  %3184 = and i32 %3183, 1
  %3185 = icmp eq i32 %3184, 0
  br i1 %3185, label %3192, label %3186

3186:                                             ; preds = %3180
  %3187 = load i32, ptr %5, align 4
  %3188 = shl i32 %3187, 8
  %3189 = and i32 %3188, 256
  %3190 = or i32 %3189, %3181
  %3191 = or i32 %3182, 256
  br label %3192

3192:                                             ; preds = %3186, %3180
  %3193 = phi i32 [ %3190, %3186 ], [ %3181, %3180 ]
  %3194 = phi i32 [ %3191, %3186 ], [ %3182, %3180 ]
  %3195 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 32
  %3196 = load i32, ptr %3195, align 4
  %3197 = load i32, ptr %14, align 4
  %3198 = icmp eq i32 %3196, %3197
  br i1 %3198, label %3199, label %3202

3199:                                             ; preds = %3192
  %3200 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 32, i32 5
  %3201 = load i32, ptr %3200, align 4
  br label %3214

3202:                                             ; preds = %3192
  %3203 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3204 = load ptr, ptr %3203, align 4
  %3205 = getelementptr inbounds %struct.nvkm_fb, ptr %3204, i32 0, i32 1, i32 1
  %3206 = load ptr, ptr %3205, align 4
  %3207 = getelementptr inbounds %struct.nvkm_device, ptr %3206, i32 0, i32 11
  %3208 = load ptr, ptr %3207, align 4
  %3209 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 32, i32 2
  %3210 = load i32, ptr %3209, align 4
  %3211 = getelementptr i8, ptr %3208, i32 %3210
  %3212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3211) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3213 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 32, i32 5
  store i32 %3212, ptr %3213, align 4
  br label %3214

3214:                                             ; preds = %3202, %3199
  %3215 = phi i32 [ %3201, %3199 ], [ %3212, %3202 ]
  %3216 = xor i32 %3194, -1
  %3217 = and i32 %3215, %3216
  %3218 = or i32 %3217, %3193
  %3219 = icmp eq i32 %3215, %3218
  br i1 %3219, label %3220, label %3224

3220:                                             ; preds = %3214
  %3221 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 32, i32 1
  %3222 = load i8, ptr %3221, align 4, !range !15
  %3223 = icmp eq i8 %3222, 0
  br i1 %3223, label %3250, label %3224

3224:                                             ; preds = %3220, %3214
  %3225 = load i32, ptr %14, align 4
  store i32 %3225, ptr %3195, align 4
  %3226 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 32, i32 5
  store i32 %3218, ptr %3226, align 4
  %3227 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 32, i32 4
  %3228 = load i32, ptr %3227, align 4
  %3229 = icmp eq i32 %3228, 0
  br i1 %3229, label %3248, label %3230

3230:                                             ; preds = %3224
  %3231 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 32, i32 2
  %3232 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 32, i32 3
  br label %3233

3233:                                             ; preds = %3243, %3230
  %3234 = phi i32 [ 0, %3230 ], [ %3245, %3243 ]
  %3235 = phi i32 [ %3228, %3230 ], [ %3246, %3243 ]
  %3236 = and i32 %3235, 1
  %3237 = icmp eq i32 %3236, 0
  br i1 %3237, label %3243, label %3238

3238:                                             ; preds = %3233
  %3239 = load ptr, ptr %2, align 4
  %3240 = load i32, ptr %3231, align 4
  %3241 = add i32 %3240, %3234
  %3242 = load i32, ptr %3226, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3239, i32 noundef %3241, i32 noundef %3242) #11
  br label %3243

3243:                                             ; preds = %3238, %3233
  %3244 = load i32, ptr %3232, align 4
  %3245 = add i32 %3244, %3234
  %3246 = lshr i32 %3235, 1
  %3247 = icmp ult i32 %3235, 2
  br i1 %3247, label %3248, label %3233

3248:                                             ; preds = %3243, %3224
  %3249 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 32, i32 1
  store i8 0, ptr %3249, align 4
  br label %3250

3250:                                             ; preds = %3248, %3220
  %3251 = load i64, ptr %3170, align 8
  %3252 = and i64 %3251, 469762048
  %3253 = icmp eq i64 %3252, 0
  br i1 %3253, label %3260, label %3254

3254:                                             ; preds = %3250
  %3255 = getelementptr inbounds %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 15
  %3256 = load i64, ptr %3255, align 4
  %3257 = trunc i64 %3256 to i32
  %3258 = shl i32 %3257, 2
  %3259 = and i32 %3258, 1879048192
  br label %3260

3260:                                             ; preds = %3254, %3250
  %3261 = phi i32 [ %3259, %3254 ], [ 0, %3250 ]
  %3262 = phi i32 [ 1879048192, %3254 ], [ 0, %3250 ]
  %3263 = load i32, ptr %3026, align 8
  %3264 = and i32 %3263, 2
  %3265 = icmp eq i32 %3264, 0
  br i1 %3265, label %3272, label %3266

3266:                                             ; preds = %3260
  %3267 = load i32, ptr %5, align 4
  %3268 = shl i32 %3267, 7
  %3269 = and i32 %3268, 256
  %3270 = or i32 %3269, %3261
  %3271 = or i32 %3262, 256
  br label %3272

3272:                                             ; preds = %3266, %3260
  %3273 = phi i32 [ %3270, %3266 ], [ %3261, %3260 ]
  %3274 = phi i32 [ %3271, %3266 ], [ %3262, %3260 ]
  %3275 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 33
  %3276 = load i32, ptr %3275, align 4
  %3277 = load i32, ptr %14, align 4
  %3278 = icmp eq i32 %3276, %3277
  br i1 %3278, label %3279, label %3282

3279:                                             ; preds = %3272
  %3280 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 33, i32 5
  %3281 = load i32, ptr %3280, align 4
  br label %3294

3282:                                             ; preds = %3272
  %3283 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3284 = load ptr, ptr %3283, align 4
  %3285 = getelementptr inbounds %struct.nvkm_fb, ptr %3284, i32 0, i32 1, i32 1
  %3286 = load ptr, ptr %3285, align 4
  %3287 = getelementptr inbounds %struct.nvkm_device, ptr %3286, i32 0, i32 11
  %3288 = load ptr, ptr %3287, align 4
  %3289 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 33, i32 2
  %3290 = load i32, ptr %3289, align 4
  %3291 = getelementptr i8, ptr %3288, i32 %3290
  %3292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3291) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3293 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 33, i32 5
  store i32 %3292, ptr %3293, align 4
  br label %3294

3294:                                             ; preds = %3282, %3279
  %3295 = phi i32 [ %3281, %3279 ], [ %3292, %3282 ]
  %3296 = xor i32 %3274, -1
  %3297 = and i32 %3295, %3296
  %3298 = or i32 %3297, %3273
  %3299 = icmp eq i32 %3295, %3298
  br i1 %3299, label %3300, label %3304

3300:                                             ; preds = %3294
  %3301 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 33, i32 1
  %3302 = load i8, ptr %3301, align 4, !range !15
  %3303 = icmp eq i8 %3302, 0
  br i1 %3303, label %3330, label %3304

3304:                                             ; preds = %3300, %3294
  %3305 = load i32, ptr %14, align 4
  store i32 %3305, ptr %3275, align 4
  %3306 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 33, i32 5
  store i32 %3298, ptr %3306, align 4
  %3307 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 33, i32 4
  %3308 = load i32, ptr %3307, align 4
  %3309 = icmp eq i32 %3308, 0
  br i1 %3309, label %3328, label %3310

3310:                                             ; preds = %3304
  %3311 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 33, i32 2
  %3312 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 33, i32 3
  br label %3313

3313:                                             ; preds = %3323, %3310
  %3314 = phi i32 [ 0, %3310 ], [ %3325, %3323 ]
  %3315 = phi i32 [ %3308, %3310 ], [ %3326, %3323 ]
  %3316 = and i32 %3315, 1
  %3317 = icmp eq i32 %3316, 0
  br i1 %3317, label %3323, label %3318

3318:                                             ; preds = %3313
  %3319 = load ptr, ptr %2, align 4
  %3320 = load i32, ptr %3311, align 4
  %3321 = add i32 %3320, %3314
  %3322 = load i32, ptr %3306, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3319, i32 noundef %3321, i32 noundef %3322) #11
  br label %3323

3323:                                             ; preds = %3318, %3313
  %3324 = load i32, ptr %3312, align 4
  %3325 = add i32 %3324, %3314
  %3326 = lshr i32 %3315, 1
  %3327 = icmp ult i32 %3315, 2
  br i1 %3327, label %3328, label %3313

3328:                                             ; preds = %3323, %3304
  %3329 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 33, i32 1
  store i8 0, ptr %3329, align 4
  br label %3330

3330:                                             ; preds = %3328, %3300
  %3331 = load i32, ptr %5, align 4
  %3332 = and i32 %3331, 4
  %3333 = icmp eq i32 %3332, 0
  %3334 = select i1 %3333, i32 538968064, i32 0
  %3335 = load i32, ptr %682, align 4
  %3336 = and i32 %3335, 2097152
  %3337 = icmp eq i32 %3336, 0
  %3338 = or i32 %3334, 310378496
  %3339 = select i1 %3337, i32 %3338, i32 %3334
  %3340 = and i32 %3331, 62914560
  %3341 = icmp eq i32 %3340, 0
  br i1 %3341, label %3350, label %3342

3342:                                             ; preds = %3330
  %3343 = load i64, ptr %1778, align 4
  %3344 = and i64 %3343, 6
  %3345 = icmp eq i64 %3344, 0
  br i1 %3345, label %3352, label %3346

3346:                                             ; preds = %3342
  %3347 = lshr exact i32 %3336, 16
  %3348 = or i32 %3339, %3347
  %3349 = select i1 %3337, i32 871366692, i32 871366660
  br label %3352

3350:                                             ; preds = %3330
  %3351 = or i32 %3339, 4
  br label %3352

3352:                                             ; preds = %3350, %3346, %3342
  %3353 = phi i32 [ %3348, %3346 ], [ %3339, %3342 ], [ %3351, %3350 ]
  %3354 = phi i32 [ %3349, %3346 ], [ 871366656, %3342 ], [ 1945108512, %3350 ]
  %3355 = load i32, ptr %12, align 4
  %3356 = load i32, ptr %14, align 4
  %3357 = icmp eq i32 %3355, %3356
  br i1 %3357, label %3358, label %3361

3358:                                             ; preds = %3352
  %3359 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  %3360 = load i32, ptr %3359, align 4
  br label %3373

3361:                                             ; preds = %3352
  %3362 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3363 = load ptr, ptr %3362, align 4
  %3364 = getelementptr inbounds %struct.nvkm_fb, ptr %3363, i32 0, i32 1, i32 1
  %3365 = load ptr, ptr %3364, align 4
  %3366 = getelementptr inbounds %struct.nvkm_device, ptr %3365, i32 0, i32 11
  %3367 = load ptr, ptr %3366, align 4
  %3368 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %3369 = load i32, ptr %3368, align 4
  %3370 = getelementptr i8, ptr %3367, i32 %3369
  %3371 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3370) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3372 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %3371, ptr %3372, align 4
  br label %3373

3373:                                             ; preds = %3361, %3358
  %3374 = phi i32 [ %3360, %3358 ], [ %3371, %3361 ]
  %3375 = xor i32 %3354, -1
  %3376 = and i32 %3374, %3375
  %3377 = or i32 %3376, %3353
  %3378 = icmp eq i32 %3374, %3377
  br i1 %3378, label %3379, label %3383

3379:                                             ; preds = %3373
  %3380 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  %3381 = load i8, ptr %3380, align 4, !range !15
  %3382 = icmp eq i8 %3381, 0
  br i1 %3382, label %3409, label %3383

3383:                                             ; preds = %3379, %3373
  %3384 = load i32, ptr %14, align 4
  store i32 %3384, ptr %12, align 4
  %3385 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 5
  store i32 %3377, ptr %3385, align 4
  %3386 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 4
  %3387 = load i32, ptr %3386, align 4
  %3388 = icmp eq i32 %3387, 0
  br i1 %3388, label %3407, label %3389

3389:                                             ; preds = %3383
  %3390 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 2
  %3391 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 3
  br label %3392

3392:                                             ; preds = %3402, %3389
  %3393 = phi i32 [ 0, %3389 ], [ %3404, %3402 ]
  %3394 = phi i32 [ %3387, %3389 ], [ %3405, %3402 ]
  %3395 = and i32 %3394, 1
  %3396 = icmp eq i32 %3395, 0
  br i1 %3396, label %3402, label %3397

3397:                                             ; preds = %3392
  %3398 = load ptr, ptr %2, align 4
  %3399 = load i32, ptr %3390, align 4
  %3400 = add i32 %3399, %3393
  %3401 = load i32, ptr %3385, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3398, i32 noundef %3400, i32 noundef %3401) #11
  br label %3402

3402:                                             ; preds = %3397, %3392
  %3403 = load i32, ptr %3391, align 4
  %3404 = add i32 %3403, %3393
  %3405 = lshr i32 %3394, 1
  %3406 = icmp ult i32 %3394, 2
  br i1 %3406, label %3407, label %3392

3407:                                             ; preds = %3402, %3383
  %3408 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  store i8 0, ptr %3408, align 4
  br label %3409

3409:                                             ; preds = %3407, %3379
  %3410 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 37
  %3411 = load i32, ptr %5, align 4
  %3412 = lshr i32 %3411, 14
  %3413 = and i32 %3412, 15
  %3414 = mul nuw i32 %3413, 286331153
  %3415 = load i32, ptr %14, align 4
  store i32 %3415, ptr %3410, align 4
  %3416 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 37, i32 5
  store i32 %3414, ptr %3416, align 4
  %3417 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 37, i32 4
  %3418 = load i32, ptr %3417, align 4
  %3419 = icmp eq i32 %3418, 0
  br i1 %3419, label %3438, label %3420

3420:                                             ; preds = %3409
  %3421 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 37, i32 2
  %3422 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 37, i32 3
  br label %3423

3423:                                             ; preds = %3433, %3420
  %3424 = phi i32 [ 0, %3420 ], [ %3435, %3433 ]
  %3425 = phi i32 [ %3418, %3420 ], [ %3436, %3433 ]
  %3426 = and i32 %3425, 1
  %3427 = icmp eq i32 %3426, 0
  br i1 %3427, label %3433, label %3428

3428:                                             ; preds = %3423
  %3429 = load ptr, ptr %2, align 4
  %3430 = load i32, ptr %3421, align 4
  %3431 = add i32 %3430, %3424
  %3432 = load i32, ptr %3416, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3429, i32 noundef %3431, i32 noundef %3432) #11
  br label %3433

3433:                                             ; preds = %3428, %3423
  %3434 = load i32, ptr %3422, align 4
  %3435 = add i32 %3434, %3424
  %3436 = lshr i32 %3425, 1
  %3437 = icmp ult i32 %3425, 2
  br i1 %3437, label %3438, label %3423

3438:                                             ; preds = %3433, %3409
  %3439 = load i32, ptr %3026, align 8
  %3440 = and i32 %3439, 384
  %3441 = icmp eq i32 %3440, 0
  br i1 %3441, label %3446, label %3442

3442:                                             ; preds = %3438
  %3443 = load i32, ptr %5, align 4
  %3444 = lshr i32 %3443, 7
  %3445 = and i32 %3444, 3
  br label %3446

3446:                                             ; preds = %3442, %3438
  %3447 = phi i32 [ %3445, %3442 ], [ 0, %3438 ]
  %3448 = phi i32 [ 3, %3442 ], [ 0, %3438 ]
  %3449 = and i32 %3439, 16
  %3450 = icmp eq i32 %3449, 0
  br i1 %3450, label %3457, label %3451

3451:                                             ; preds = %3446
  %3452 = load i32, ptr %5, align 4
  %3453 = lshr i32 %3452, 2
  %3454 = and i32 %3453, 4
  %3455 = or i32 %3454, %3447
  %3456 = or i32 %3448, 4
  br label %3457

3457:                                             ; preds = %3451, %3446
  %3458 = phi i32 [ %3455, %3451 ], [ %3447, %3446 ]
  %3459 = phi i32 [ %3456, %3451 ], [ %3448, %3446 ]
  %3460 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 34
  %3461 = load i32, ptr %3460, align 4
  %3462 = load i32, ptr %14, align 4
  %3463 = icmp eq i32 %3461, %3462
  br i1 %3463, label %3464, label %3467

3464:                                             ; preds = %3457
  %3465 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 34, i32 5
  %3466 = load i32, ptr %3465, align 4
  br label %3479

3467:                                             ; preds = %3457
  %3468 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3469 = load ptr, ptr %3468, align 4
  %3470 = getelementptr inbounds %struct.nvkm_fb, ptr %3469, i32 0, i32 1, i32 1
  %3471 = load ptr, ptr %3470, align 4
  %3472 = getelementptr inbounds %struct.nvkm_device, ptr %3471, i32 0, i32 11
  %3473 = load ptr, ptr %3472, align 4
  %3474 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 34, i32 2
  %3475 = load i32, ptr %3474, align 4
  %3476 = getelementptr i8, ptr %3473, i32 %3475
  %3477 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3476) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3478 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 34, i32 5
  store i32 %3477, ptr %3478, align 4
  br label %3479

3479:                                             ; preds = %3467, %3464
  %3480 = phi i32 [ %3466, %3464 ], [ %3477, %3467 ]
  %3481 = xor i32 %3459, -1
  %3482 = and i32 %3480, %3481
  %3483 = or i32 %3482, %3458
  %3484 = icmp eq i32 %3480, %3483
  br i1 %3484, label %3485, label %3489

3485:                                             ; preds = %3479
  %3486 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 34, i32 1
  %3487 = load i8, ptr %3486, align 4, !range !15
  %3488 = icmp eq i8 %3487, 0
  br i1 %3488, label %3515, label %3489

3489:                                             ; preds = %3485, %3479
  %3490 = load i32, ptr %14, align 4
  store i32 %3490, ptr %3460, align 4
  %3491 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 34, i32 5
  store i32 %3483, ptr %3491, align 4
  %3492 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 34, i32 4
  %3493 = load i32, ptr %3492, align 4
  %3494 = icmp eq i32 %3493, 0
  br i1 %3494, label %3513, label %3495

3495:                                             ; preds = %3489
  %3496 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 34, i32 2
  %3497 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 34, i32 3
  br label %3498

3498:                                             ; preds = %3508, %3495
  %3499 = phi i32 [ 0, %3495 ], [ %3510, %3508 ]
  %3500 = phi i32 [ %3493, %3495 ], [ %3511, %3508 ]
  %3501 = and i32 %3500, 1
  %3502 = icmp eq i32 %3501, 0
  br i1 %3502, label %3508, label %3503

3503:                                             ; preds = %3498
  %3504 = load ptr, ptr %2, align 4
  %3505 = load i32, ptr %3496, align 4
  %3506 = add i32 %3505, %3499
  %3507 = load i32, ptr %3491, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3504, i32 noundef %3506, i32 noundef %3507) #11
  br label %3508

3508:                                             ; preds = %3503, %3498
  %3509 = load i32, ptr %3497, align 4
  %3510 = add i32 %3509, %3499
  %3511 = lshr i32 %3500, 1
  %3512 = icmp ult i32 %3500, 2
  br i1 %3512, label %3513, label %3498

3513:                                             ; preds = %3508, %3489
  %3514 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 34, i32 1
  store i8 0, ptr %3514, align 4
  br label %3515

3515:                                             ; preds = %3513, %3485
  %3516 = and i32 %3480, %3459
  %3517 = xor i32 %3516, %3458
  %3518 = and i32 %3517, 4
  %3519 = icmp eq i32 %3518, 0
  br i1 %3519, label %3601, label %3520

3520:                                             ; preds = %3515
  %3521 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 67
  %3522 = load i32, ptr %3521, align 4
  %3523 = load i32, ptr %14, align 4
  %3524 = icmp eq i32 %3522, %3523
  br i1 %3524, label %3525, label %3528

3525:                                             ; preds = %3520
  %3526 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 67, i32 5
  %3527 = load i32, ptr %3526, align 4
  br label %3540

3528:                                             ; preds = %3520
  %3529 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3530 = load ptr, ptr %3529, align 4
  %3531 = getelementptr inbounds %struct.nvkm_fb, ptr %3530, i32 0, i32 1, i32 1
  %3532 = load ptr, ptr %3531, align 4
  %3533 = getelementptr inbounds %struct.nvkm_device, ptr %3532, i32 0, i32 11
  %3534 = load ptr, ptr %3533, align 4
  %3535 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 67, i32 2
  %3536 = load i32, ptr %3535, align 4
  %3537 = getelementptr i8, ptr %3534, i32 %3536
  %3538 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3537) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3539 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 67, i32 5
  store i32 %3538, ptr %3539, align 4
  br label %3540

3540:                                             ; preds = %3528, %3525
  %3541 = phi i32 [ %3527, %3525 ], [ %3538, %3528 ]
  %3542 = or i32 %3541, 8
  %3543 = icmp eq i32 %3541, %3542
  br i1 %3543, label %3544, label %3548

3544:                                             ; preds = %3540
  %3545 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 67, i32 1
  %3546 = load i8, ptr %3545, align 4, !range !15
  %3547 = icmp eq i8 %3546, 0
  br i1 %3547, label %3574, label %3548

3548:                                             ; preds = %3544, %3540
  %3549 = load i32, ptr %14, align 4
  store i32 %3549, ptr %3521, align 4
  %3550 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 67, i32 5
  store i32 %3542, ptr %3550, align 4
  %3551 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 67, i32 4
  %3552 = load i32, ptr %3551, align 4
  %3553 = icmp eq i32 %3552, 0
  br i1 %3553, label %3572, label %3554

3554:                                             ; preds = %3548
  %3555 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 67, i32 2
  %3556 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 67, i32 3
  br label %3557

3557:                                             ; preds = %3567, %3554
  %3558 = phi i32 [ 0, %3554 ], [ %3569, %3567 ]
  %3559 = phi i32 [ %3552, %3554 ], [ %3570, %3567 ]
  %3560 = and i32 %3559, 1
  %3561 = icmp eq i32 %3560, 0
  br i1 %3561, label %3567, label %3562

3562:                                             ; preds = %3557
  %3563 = load ptr, ptr %2, align 4
  %3564 = load i32, ptr %3555, align 4
  %3565 = add i32 %3564, %3558
  %3566 = load i32, ptr %3550, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3563, i32 noundef %3565, i32 noundef %3566) #11
  br label %3567

3567:                                             ; preds = %3562, %3557
  %3568 = load i32, ptr %3556, align 4
  %3569 = add i32 %3568, %3558
  %3570 = lshr i32 %3559, 1
  %3571 = icmp ult i32 %3559, 2
  br i1 %3571, label %3572, label %3557

3572:                                             ; preds = %3567, %3548
  %3573 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 67, i32 1
  store i8 0, ptr %3573, align 4
  br label %3574

3574:                                             ; preds = %3572, %3544
  %3575 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 66
  %3576 = load i32, ptr %14, align 4
  store i32 %3576, ptr %3575, align 4
  %3577 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 66, i32 5
  store i32 0, ptr %3577, align 4
  %3578 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 66, i32 4
  %3579 = load i32, ptr %3578, align 4
  %3580 = icmp eq i32 %3579, 0
  br i1 %3580, label %3599, label %3581

3581:                                             ; preds = %3574
  %3582 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 66, i32 2
  %3583 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 66, i32 3
  br label %3584

3584:                                             ; preds = %3594, %3581
  %3585 = phi i32 [ 0, %3581 ], [ %3596, %3594 ]
  %3586 = phi i32 [ %3579, %3581 ], [ %3597, %3594 ]
  %3587 = and i32 %3586, 1
  %3588 = icmp eq i32 %3587, 0
  br i1 %3588, label %3594, label %3589

3589:                                             ; preds = %3584
  %3590 = load ptr, ptr %2, align 4
  %3591 = load i32, ptr %3582, align 4
  %3592 = add i32 %3591, %3585
  %3593 = load i32, ptr %3577, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3590, i32 noundef %3592, i32 noundef %3593) #11
  br label %3594

3594:                                             ; preds = %3589, %3584
  %3595 = load i32, ptr %3583, align 4
  %3596 = add i32 %3595, %3585
  %3597 = lshr i32 %3586, 1
  %3598 = icmp ult i32 %3586, 2
  br i1 %3598, label %3599, label %3584

3599:                                             ; preds = %3594, %3574
  %3600 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_wait(ptr noundef %3600, i32 noundef 1050384, i32 noundef -2147483648, i32 noundef -2147483648, i32 noundef 200000) #11
  br label %3601

3601:                                             ; preds = %3599, %3515
  %3602 = getelementptr inbounds %struct.nvkm_ram_data, ptr %4, i32 0, i32 1, i32 15
  %3603 = load i64, ptr %3602, align 4
  %3604 = trunc i64 %3603 to i32
  %3605 = lshr i32 %3604, 18
  %3606 = and i32 %3605, 1792
  %3607 = load i32, ptr %5, align 4
  %3608 = shl i32 %3607, 31
  %3609 = or i32 %3606, %3608
  %3610 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 35
  %3611 = load i32, ptr %3610, align 4
  %3612 = load i32, ptr %14, align 4
  %3613 = icmp eq i32 %3611, %3612
  br i1 %3613, label %3614, label %3617

3614:                                             ; preds = %3601
  %3615 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 35, i32 5
  %3616 = load i32, ptr %3615, align 4
  br label %3629

3617:                                             ; preds = %3601
  %3618 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3619 = load ptr, ptr %3618, align 4
  %3620 = getelementptr inbounds %struct.nvkm_fb, ptr %3619, i32 0, i32 1, i32 1
  %3621 = load ptr, ptr %3620, align 4
  %3622 = getelementptr inbounds %struct.nvkm_device, ptr %3621, i32 0, i32 11
  %3623 = load ptr, ptr %3622, align 4
  %3624 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 35, i32 2
  %3625 = load i32, ptr %3624, align 4
  %3626 = getelementptr i8, ptr %3623, i32 %3625
  %3627 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3626) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3628 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 35, i32 5
  store i32 %3627, ptr %3628, align 4
  br label %3629

3629:                                             ; preds = %3617, %3614
  %3630 = phi i32 [ %3616, %3614 ], [ %3627, %3617 ]
  %3631 = and i32 %3630, -1793
  %3632 = or i32 %3631, %3609
  %3633 = icmp eq i32 %3630, %3632
  br i1 %3633, label %3634, label %3638

3634:                                             ; preds = %3629
  %3635 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 35, i32 1
  %3636 = load i8, ptr %3635, align 4, !range !15
  %3637 = icmp eq i8 %3636, 0
  br i1 %3637, label %3664, label %3638

3638:                                             ; preds = %3634, %3629
  %3639 = load i32, ptr %14, align 4
  store i32 %3639, ptr %3610, align 4
  %3640 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 35, i32 5
  store i32 %3632, ptr %3640, align 4
  %3641 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 35, i32 4
  %3642 = load i32, ptr %3641, align 4
  %3643 = icmp eq i32 %3642, 0
  br i1 %3643, label %3662, label %3644

3644:                                             ; preds = %3638
  %3645 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 35, i32 2
  %3646 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 35, i32 3
  br label %3647

3647:                                             ; preds = %3657, %3644
  %3648 = phi i32 [ 0, %3644 ], [ %3659, %3657 ]
  %3649 = phi i32 [ %3642, %3644 ], [ %3660, %3657 ]
  %3650 = and i32 %3649, 1
  %3651 = icmp eq i32 %3650, 0
  br i1 %3651, label %3657, label %3652

3652:                                             ; preds = %3647
  %3653 = load ptr, ptr %2, align 4
  %3654 = load i32, ptr %3645, align 4
  %3655 = add i32 %3654, %3648
  %3656 = load i32, ptr %3640, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3653, i32 noundef %3655, i32 noundef %3656) #11
  br label %3657

3657:                                             ; preds = %3652, %3647
  %3658 = load i32, ptr %3646, align 4
  %3659 = add i32 %3658, %3648
  %3660 = lshr i32 %3649, 1
  %3661 = icmp ult i32 %3649, 2
  br i1 %3661, label %3662, label %3647

3662:                                             ; preds = %3657, %3638
  %3663 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 35, i32 1
  store i8 0, ptr %3663, align 4
  br label %3664

3664:                                             ; preds = %3662, %3634
  %3665 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27
  %3666 = load i64, ptr %3602, align 4
  %3667 = trunc i64 %3666 to i32
  %3668 = lshr i32 %3667, 4
  %3669 = and i32 %3668, 1008
  %3670 = load i32, ptr %3665, align 4
  %3671 = load i32, ptr %14, align 4
  %3672 = icmp eq i32 %3670, %3671
  br i1 %3672, label %3673, label %3676

3673:                                             ; preds = %3664
  %3674 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 5
  %3675 = load i32, ptr %3674, align 4
  br label %3688

3676:                                             ; preds = %3664
  %3677 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3678 = load ptr, ptr %3677, align 4
  %3679 = getelementptr inbounds %struct.nvkm_fb, ptr %3678, i32 0, i32 1, i32 1
  %3680 = load ptr, ptr %3679, align 4
  %3681 = getelementptr inbounds %struct.nvkm_device, ptr %3680, i32 0, i32 11
  %3682 = load ptr, ptr %3681, align 4
  %3683 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 2
  %3684 = load i32, ptr %3683, align 4
  %3685 = getelementptr i8, ptr %3682, i32 %3684
  %3686 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3685) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3687 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 5
  store i32 %3686, ptr %3687, align 4
  br label %3688

3688:                                             ; preds = %3676, %3673
  %3689 = phi i32 [ %3675, %3673 ], [ %3686, %3676 ]
  %3690 = and i32 %3689, -1009
  %3691 = or i32 %3690, %3669
  %3692 = icmp eq i32 %3689, %3691
  br i1 %3692, label %3693, label %3697

3693:                                             ; preds = %3688
  %3694 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 1
  %3695 = load i8, ptr %3694, align 4, !range !15
  %3696 = icmp eq i8 %3695, 0
  br i1 %3696, label %3723, label %3697

3697:                                             ; preds = %3693, %3688
  %3698 = load i32, ptr %14, align 4
  store i32 %3698, ptr %3665, align 4
  %3699 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 5
  store i32 %3691, ptr %3699, align 4
  %3700 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 4
  %3701 = load i32, ptr %3700, align 4
  %3702 = icmp eq i32 %3701, 0
  br i1 %3702, label %3721, label %3703

3703:                                             ; preds = %3697
  %3704 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 2
  %3705 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 3
  br label %3706

3706:                                             ; preds = %3716, %3703
  %3707 = phi i32 [ 0, %3703 ], [ %3718, %3716 ]
  %3708 = phi i32 [ %3701, %3703 ], [ %3719, %3716 ]
  %3709 = and i32 %3708, 1
  %3710 = icmp eq i32 %3709, 0
  br i1 %3710, label %3716, label %3711

3711:                                             ; preds = %3706
  %3712 = load ptr, ptr %2, align 4
  %3713 = load i32, ptr %3704, align 4
  %3714 = add i32 %3713, %3707
  %3715 = load i32, ptr %3699, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3712, i32 noundef %3714, i32 noundef %3715) #11
  br label %3716

3716:                                             ; preds = %3711, %3706
  %3717 = load i32, ptr %3705, align 4
  %3718 = add i32 %3717, %3707
  %3719 = lshr i32 %3708, 1
  %3720 = icmp ult i32 %3708, 2
  br i1 %3720, label %3721, label %3706

3721:                                             ; preds = %3716, %3697
  %3722 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 27, i32 1
  store i8 0, ptr %3722, align 4
  br label %3723

3723:                                             ; preds = %3721, %3693
  %3724 = load i32, ptr %2423, align 4
  %3725 = lshr i32 %3724, 24
  %3726 = and i32 %3725, 127
  %3727 = load i64, ptr %3602, align 4
  %3728 = trunc i64 %3727 to i32
  %3729 = lshr i32 %3728, 14
  %3730 = and i32 %3729, 127
  %3731 = tail call i32 @llvm.umax.i32(i32 %3726, i32 %3730)
  %3732 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28
  %3733 = shl nuw nsw i32 %3731, 24
  %3734 = load i32, ptr %3732, align 4
  %3735 = load i32, ptr %14, align 4
  %3736 = icmp eq i32 %3734, %3735
  br i1 %3736, label %3737, label %3740

3737:                                             ; preds = %3723
  %3738 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 5
  %3739 = load i32, ptr %3738, align 4
  br label %3752

3740:                                             ; preds = %3723
  %3741 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3742 = load ptr, ptr %3741, align 4
  %3743 = getelementptr inbounds %struct.nvkm_fb, ptr %3742, i32 0, i32 1, i32 1
  %3744 = load ptr, ptr %3743, align 4
  %3745 = getelementptr inbounds %struct.nvkm_device, ptr %3744, i32 0, i32 11
  %3746 = load ptr, ptr %3745, align 4
  %3747 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 2
  %3748 = load i32, ptr %3747, align 4
  %3749 = getelementptr i8, ptr %3746, i32 %3748
  %3750 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3749) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3751 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 5
  store i32 %3750, ptr %3751, align 4
  br label %3752

3752:                                             ; preds = %3740, %3737
  %3753 = phi i32 [ %3739, %3737 ], [ %3750, %3740 ]
  %3754 = and i32 %3753, -2130706433
  %3755 = or i32 %3754, %3733
  %3756 = icmp eq i32 %3753, %3755
  br i1 %3756, label %3757, label %3761

3757:                                             ; preds = %3752
  %3758 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 1
  %3759 = load i8, ptr %3758, align 4, !range !15
  %3760 = icmp eq i8 %3759, 0
  br i1 %3760, label %3787, label %3761

3761:                                             ; preds = %3757, %3752
  %3762 = load i32, ptr %14, align 4
  store i32 %3762, ptr %3732, align 4
  %3763 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 5
  store i32 %3755, ptr %3763, align 4
  %3764 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 4
  %3765 = load i32, ptr %3764, align 4
  %3766 = icmp eq i32 %3765, 0
  br i1 %3766, label %3785, label %3767

3767:                                             ; preds = %3761
  %3768 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 2
  %3769 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 3
  br label %3770

3770:                                             ; preds = %3780, %3767
  %3771 = phi i32 [ 0, %3767 ], [ %3782, %3780 ]
  %3772 = phi i32 [ %3765, %3767 ], [ %3783, %3780 ]
  %3773 = and i32 %3772, 1
  %3774 = icmp eq i32 %3773, 0
  br i1 %3774, label %3780, label %3775

3775:                                             ; preds = %3770
  %3776 = load ptr, ptr %2, align 4
  %3777 = load i32, ptr %3768, align 4
  %3778 = add i32 %3777, %3771
  %3779 = load i32, ptr %3763, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3776, i32 noundef %3778, i32 noundef %3779) #11
  br label %3780

3780:                                             ; preds = %3775, %3770
  %3781 = load i32, ptr %3769, align 4
  %3782 = add i32 %3781, %3771
  %3783 = lshr i32 %3772, 1
  %3784 = icmp ult i32 %3772, 2
  br i1 %3784, label %3785, label %3770

3785:                                             ; preds = %3780, %3761
  %3786 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 28, i32 1
  store i8 0, ptr %3786, align 4
  br label %3787

3787:                                             ; preds = %3785, %3757
  %3788 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36
  %3789 = load i64, ptr %3602, align 4
  %3790 = trunc i64 %3789 to i32
  %3791 = lshr i32 %3790, 5
  %3792 = and i32 %3791, 2031616
  %3793 = load i32, ptr %3788, align 4
  %3794 = load i32, ptr %14, align 4
  %3795 = icmp eq i32 %3793, %3794
  br i1 %3795, label %3796, label %3799

3796:                                             ; preds = %3787
  %3797 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 5
  %3798 = load i32, ptr %3797, align 4
  br label %3811

3799:                                             ; preds = %3787
  %3800 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3801 = load ptr, ptr %3800, align 4
  %3802 = getelementptr inbounds %struct.nvkm_fb, ptr %3801, i32 0, i32 1, i32 1
  %3803 = load ptr, ptr %3802, align 4
  %3804 = getelementptr inbounds %struct.nvkm_device, ptr %3803, i32 0, i32 11
  %3805 = load ptr, ptr %3804, align 4
  %3806 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 2
  %3807 = load i32, ptr %3806, align 4
  %3808 = getelementptr i8, ptr %3805, i32 %3807
  %3809 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3808) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3810 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 5
  store i32 %3809, ptr %3810, align 4
  br label %3811

3811:                                             ; preds = %3799, %3796
  %3812 = phi i32 [ %3798, %3796 ], [ %3809, %3799 ]
  %3813 = and i32 %3812, -2031617
  %3814 = or i32 %3813, %3792
  %3815 = icmp eq i32 %3812, %3814
  br i1 %3815, label %3816, label %3820

3816:                                             ; preds = %3811
  %3817 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 1
  %3818 = load i8, ptr %3817, align 4, !range !15
  %3819 = icmp eq i8 %3818, 0
  br i1 %3819, label %3846, label %3820

3820:                                             ; preds = %3816, %3811
  %3821 = load i32, ptr %14, align 4
  store i32 %3821, ptr %3788, align 4
  %3822 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 5
  store i32 %3814, ptr %3822, align 4
  %3823 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 4
  %3824 = load i32, ptr %3823, align 4
  %3825 = icmp eq i32 %3824, 0
  br i1 %3825, label %3844, label %3826

3826:                                             ; preds = %3820
  %3827 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 2
  %3828 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 3
  br label %3829

3829:                                             ; preds = %3839, %3826
  %3830 = phi i32 [ 0, %3826 ], [ %3841, %3839 ]
  %3831 = phi i32 [ %3824, %3826 ], [ %3842, %3839 ]
  %3832 = and i32 %3831, 1
  %3833 = icmp eq i32 %3832, 0
  br i1 %3833, label %3839, label %3834

3834:                                             ; preds = %3829
  %3835 = load ptr, ptr %2, align 4
  %3836 = load i32, ptr %3827, align 4
  %3837 = add i32 %3836, %3830
  %3838 = load i32, ptr %3822, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3835, i32 noundef %3837, i32 noundef %3838) #11
  br label %3839

3839:                                             ; preds = %3834, %3829
  %3840 = load i32, ptr %3828, align 4
  %3841 = add i32 %3840, %3830
  %3842 = lshr i32 %3831, 1
  %3843 = icmp ult i32 %3831, 2
  br i1 %3843, label %3844, label %3829

3844:                                             ; preds = %3839, %3820
  %3845 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 36, i32 1
  store i8 0, ptr %3845, align 4
  br label %3846

3846:                                             ; preds = %3844, %3816
  %3847 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 29
  %3848 = load i64, ptr %3602, align 4
  %3849 = lshr i64 %3848, 14
  %3850 = trunc i64 %3849 to i32
  %3851 = and i32 %3850, 67108864
  %3852 = lshr i64 %3848, 19
  %3853 = trunc i64 %3852 to i32
  %3854 = and i32 %3853, 1966080
  %3855 = lshr i64 %3848, 24
  %3856 = trunc i64 %3855 to i32
  %3857 = and i32 %3856, 3840
  %3858 = trunc i64 %3848 to i32
  %3859 = lshr i32 %3858, 29
  %3860 = load i32, ptr %3847, align 4
  %3861 = load i32, ptr %14, align 4
  %3862 = icmp eq i32 %3860, %3861
  br i1 %3862, label %3863, label %3866

3863:                                             ; preds = %3846
  %3864 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 29, i32 5
  %3865 = load i32, ptr %3864, align 4
  br label %3878

3866:                                             ; preds = %3846
  %3867 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3868 = load ptr, ptr %3867, align 4
  %3869 = getelementptr inbounds %struct.nvkm_fb, ptr %3868, i32 0, i32 1, i32 1
  %3870 = load ptr, ptr %3869, align 4
  %3871 = getelementptr inbounds %struct.nvkm_device, ptr %3870, i32 0, i32 11
  %3872 = load ptr, ptr %3871, align 4
  %3873 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 29, i32 2
  %3874 = load i32, ptr %3873, align 4
  %3875 = getelementptr i8, ptr %3872, i32 %3874
  %3876 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3875) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3877 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 29, i32 5
  store i32 %3876, ptr %3877, align 4
  br label %3878

3878:                                             ; preds = %3866, %3863
  %3879 = phi i32 [ %3865, %3863 ], [ %3876, %3866 ]
  %3880 = and i32 %3879, -69078792
  %3881 = or i32 %3854, %3859
  %3882 = or i32 %3881, %3851
  %3883 = or i32 %3882, %3857
  %3884 = or i32 %3883, %3880
  %3885 = icmp eq i32 %3879, %3884
  br i1 %3885, label %3886, label %3890

3886:                                             ; preds = %3878
  %3887 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 29, i32 1
  %3888 = load i8, ptr %3887, align 4, !range !15
  %3889 = icmp eq i8 %3888, 0
  br i1 %3889, label %3916, label %3890

3890:                                             ; preds = %3886, %3878
  %3891 = load i32, ptr %14, align 4
  store i32 %3891, ptr %3847, align 4
  %3892 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 29, i32 5
  store i32 %3884, ptr %3892, align 4
  %3893 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 29, i32 4
  %3894 = load i32, ptr %3893, align 4
  %3895 = icmp eq i32 %3894, 0
  br i1 %3895, label %3914, label %3896

3896:                                             ; preds = %3890
  %3897 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 29, i32 2
  %3898 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 29, i32 3
  br label %3899

3899:                                             ; preds = %3909, %3896
  %3900 = phi i32 [ 0, %3896 ], [ %3911, %3909 ]
  %3901 = phi i32 [ %3894, %3896 ], [ %3912, %3909 ]
  %3902 = and i32 %3901, 1
  %3903 = icmp eq i32 %3902, 0
  br i1 %3903, label %3909, label %3904

3904:                                             ; preds = %3899
  %3905 = load ptr, ptr %2, align 4
  %3906 = load i32, ptr %3897, align 4
  %3907 = add i32 %3906, %3900
  %3908 = load i32, ptr %3892, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3905, i32 noundef %3907, i32 noundef %3908) #11
  br label %3909

3909:                                             ; preds = %3904, %3899
  %3910 = load i32, ptr %3898, align 4
  %3911 = add i32 %3910, %3900
  %3912 = lshr i32 %3901, 1
  %3913 = icmp ult i32 %3901, 2
  br i1 %3913, label %3914, label %3899

3914:                                             ; preds = %3909, %3890
  %3915 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 29, i32 1
  store i8 0, ptr %3915, align 4
  br label %3916

3916:                                             ; preds = %3914, %3886
  %3917 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 30
  %3918 = load i64, ptr %3602, align 4
  %3919 = lshr i64 %3918, 39
  %3920 = trunc i64 %3919 to i32
  %3921 = and i32 %3920, 32
  %3922 = lshr i64 %3918, 41
  %3923 = trunc i64 %3922 to i32
  %3924 = and i32 %3923, 7
  %3925 = or i32 %3921, %3924
  %3926 = load i32, ptr %3917, align 4
  %3927 = load i32, ptr %14, align 4
  %3928 = icmp eq i32 %3926, %3927
  br i1 %3928, label %3929, label %3932

3929:                                             ; preds = %3916
  %3930 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 30, i32 5
  %3931 = load i32, ptr %3930, align 4
  br label %3944

3932:                                             ; preds = %3916
  %3933 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3934 = load ptr, ptr %3933, align 4
  %3935 = getelementptr inbounds %struct.nvkm_fb, ptr %3934, i32 0, i32 1, i32 1
  %3936 = load ptr, ptr %3935, align 4
  %3937 = getelementptr inbounds %struct.nvkm_device, ptr %3936, i32 0, i32 11
  %3938 = load ptr, ptr %3937, align 4
  %3939 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 30, i32 2
  %3940 = load i32, ptr %3939, align 4
  %3941 = getelementptr i8, ptr %3938, i32 %3940
  %3942 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3941) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %3943 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 30, i32 5
  store i32 %3942, ptr %3943, align 4
  br label %3944

3944:                                             ; preds = %3932, %3929
  %3945 = phi i32 [ %3931, %3929 ], [ %3942, %3932 ]
  %3946 = and i32 %3945, -40
  %3947 = or i32 %3925, %3946
  %3948 = icmp eq i32 %3945, %3947
  br i1 %3948, label %3949, label %3953

3949:                                             ; preds = %3944
  %3950 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 30, i32 1
  %3951 = load i8, ptr %3950, align 4, !range !15
  %3952 = icmp eq i8 %3951, 0
  br i1 %3952, label %3979, label %3953

3953:                                             ; preds = %3949, %3944
  %3954 = load i32, ptr %14, align 4
  store i32 %3954, ptr %3917, align 4
  %3955 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 30, i32 5
  store i32 %3947, ptr %3955, align 4
  %3956 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 30, i32 4
  %3957 = load i32, ptr %3956, align 4
  %3958 = icmp eq i32 %3957, 0
  br i1 %3958, label %3977, label %3959

3959:                                             ; preds = %3953
  %3960 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 30, i32 2
  %3961 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 30, i32 3
  br label %3962

3962:                                             ; preds = %3972, %3959
  %3963 = phi i32 [ 0, %3959 ], [ %3974, %3972 ]
  %3964 = phi i32 [ %3957, %3959 ], [ %3975, %3972 ]
  %3965 = and i32 %3964, 1
  %3966 = icmp eq i32 %3965, 0
  br i1 %3966, label %3972, label %3967

3967:                                             ; preds = %3962
  %3968 = load ptr, ptr %2, align 4
  %3969 = load i32, ptr %3960, align 4
  %3970 = add i32 %3969, %3963
  %3971 = load i32, ptr %3955, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3968, i32 noundef %3970, i32 noundef %3971) #11
  br label %3972

3972:                                             ; preds = %3967, %3962
  %3973 = load i32, ptr %3961, align 4
  %3974 = add i32 %3973, %3963
  %3975 = lshr i32 %3964, 1
  %3976 = icmp ult i32 %3964, 2
  br i1 %3976, label %3977, label %3962

3977:                                             ; preds = %3972, %3953
  %3978 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 30, i32 1
  store i8 0, ptr %3978, align 4
  br label %3979

3979:                                             ; preds = %3977, %3949
  %3980 = load i32, ptr %14, align 4
  store i32 %3980, ptr %539, align 4
  store i32 1073741950, ptr %541, align 4
  %3981 = load i32, ptr %542, align 4
  %3982 = icmp eq i32 %3981, 0
  br i1 %3982, label %4001, label %3983

3983:                                             ; preds = %3979
  %3984 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 2
  %3985 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 58, i32 3
  br label %3986

3986:                                             ; preds = %3996, %3983
  %3987 = phi i32 [ 0, %3983 ], [ %3998, %3996 ]
  %3988 = phi i32 [ %3981, %3983 ], [ %3999, %3996 ]
  %3989 = and i32 %3988, 1
  %3990 = icmp eq i32 %3989, 0
  br i1 %3990, label %3996, label %3991

3991:                                             ; preds = %3986
  %3992 = load ptr, ptr %2, align 4
  %3993 = load i32, ptr %3984, align 4
  %3994 = add i32 %3993, %3987
  %3995 = load i32, ptr %541, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %3992, i32 noundef %3994, i32 noundef %3995) #11
  br label %3996

3996:                                             ; preds = %3991, %3986
  %3997 = load i32, ptr %3985, align 4
  %3998 = add i32 %3997, %3987
  %3999 = lshr i32 %3988, 1
  %4000 = icmp ult i32 %3988, 2
  br i1 %4000, label %4001, label %3986

4001:                                             ; preds = %3996, %3979
  %4002 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %4002, i32 noundef 2000) #11
  %4003 = load i32, ptr %14, align 4
  store i32 %4003, ptr %459, align 4
  store i32 1, ptr %461, align 4
  %4004 = load i32, ptr %462, align 4
  %4005 = icmp eq i32 %4004, 0
  br i1 %4005, label %4026, label %4006

4006:                                             ; preds = %4001
  %4007 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 2
  %4008 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 56, i32 3
  br label %4009

4009:                                             ; preds = %4019, %4006
  %4010 = phi i32 [ 0, %4006 ], [ %4021, %4019 ]
  %4011 = phi i32 [ %4004, %4006 ], [ %4022, %4019 ]
  %4012 = and i32 %4011, 1
  %4013 = icmp eq i32 %4012, 0
  br i1 %4013, label %4019, label %4014

4014:                                             ; preds = %4009
  %4015 = load ptr, ptr %2, align 4
  %4016 = load i32, ptr %4007, align 4
  %4017 = add i32 %4016, %4010
  %4018 = load i32, ptr %461, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4015, i32 noundef %4017, i32 noundef %4018) #11
  br label %4019

4019:                                             ; preds = %4014, %4009
  %4020 = load i32, ptr %4008, align 4
  %4021 = add i32 %4020, %4010
  %4022 = lshr i32 %4011, 1
  %4023 = icmp ult i32 %4011, 2
  br i1 %4023, label %4024, label %4009

4024:                                             ; preds = %4019
  %4025 = load i32, ptr %14, align 4
  br label %4026

4026:                                             ; preds = %4024, %4001
  %4027 = phi i32 [ %4025, %4024 ], [ %4003, %4001 ]
  store i32 %4027, ptr %380, align 4
  store i32 1, ptr %382, align 4
  %4028 = load i32, ptr %383, align 4
  %4029 = icmp eq i32 %4028, 0
  br i1 %4029, label %4050, label %4030

4030:                                             ; preds = %4026
  %4031 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 2
  %4032 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 55, i32 3
  br label %4033

4033:                                             ; preds = %4043, %4030
  %4034 = phi i32 [ 0, %4030 ], [ %4045, %4043 ]
  %4035 = phi i32 [ %4028, %4030 ], [ %4046, %4043 ]
  %4036 = and i32 %4035, 1
  %4037 = icmp eq i32 %4036, 0
  br i1 %4037, label %4043, label %4038

4038:                                             ; preds = %4033
  %4039 = load ptr, ptr %2, align 4
  %4040 = load i32, ptr %4031, align 4
  %4041 = add i32 %4040, %4034
  %4042 = load i32, ptr %382, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4039, i32 noundef %4041, i32 noundef %4042) #11
  br label %4043

4043:                                             ; preds = %4038, %4033
  %4044 = load i32, ptr %4032, align 4
  %4045 = add i32 %4044, %4034
  %4046 = lshr i32 %4035, 1
  %4047 = icmp ult i32 %4035, 2
  br i1 %4047, label %4048, label %4033

4048:                                             ; preds = %4043
  %4049 = load i32, ptr %14, align 4
  br label %4050

4050:                                             ; preds = %4048, %4026
  %4051 = phi i32 [ %4049, %4048 ], [ %4027, %4026 ]
  store i32 %4051, ptr %354, align 4
  store i32 -2147483648, ptr %356, align 4
  %4052 = load i32, ptr %357, align 4
  %4053 = icmp eq i32 %4052, 0
  br i1 %4053, label %4072, label %4054

4054:                                             ; preds = %4050
  %4055 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 2
  %4056 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 54, i32 3
  br label %4057

4057:                                             ; preds = %4067, %4054
  %4058 = phi i32 [ 0, %4054 ], [ %4069, %4067 ]
  %4059 = phi i32 [ %4052, %4054 ], [ %4070, %4067 ]
  %4060 = and i32 %4059, 1
  %4061 = icmp eq i32 %4060, 0
  br i1 %4061, label %4067, label %4062

4062:                                             ; preds = %4057
  %4063 = load ptr, ptr %2, align 4
  %4064 = load i32, ptr %4055, align 4
  %4065 = add i32 %4064, %4058
  %4066 = load i32, ptr %356, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4063, i32 noundef %4065, i32 noundef %4066) #11
  br label %4067

4067:                                             ; preds = %4062, %4057
  %4068 = load i32, ptr %4056, align 4
  %4069 = add i32 %4068, %4058
  %4070 = lshr i32 %4059, 1
  %4071 = icmp ult i32 %4059, 2
  br i1 %4071, label %4072, label %4057

4072:                                             ; preds = %4067, %4050
  %4073 = load i32, ptr %682, align 4
  %4074 = and i32 %4073, 67108864
  %4075 = icmp eq i32 %4074, 0
  br i1 %4075, label %4158, label %4076

4076:                                             ; preds = %4072
  %4077 = load i32, ptr %1715, align 8
  %4078 = icmp eq i32 %4077, 2
  br i1 %4078, label %4079, label %4158

4079:                                             ; preds = %4076
  %4080 = load i32, ptr %2531, align 4
  %4081 = load i32, ptr %14, align 4
  %4082 = icmp eq i32 %4080, %4081
  br i1 %4082, label %4083, label %4086

4083:                                             ; preds = %4079
  %4084 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 5
  %4085 = load i32, ptr %4084, align 4
  br label %4098

4086:                                             ; preds = %4079
  %4087 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4088 = load ptr, ptr %4087, align 4
  %4089 = getelementptr inbounds %struct.nvkm_fb, ptr %4088, i32 0, i32 1, i32 1
  %4090 = load ptr, ptr %4089, align 4
  %4091 = getelementptr inbounds %struct.nvkm_device, ptr %4090, i32 0, i32 11
  %4092 = load ptr, ptr %4091, align 4
  %4093 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 2
  %4094 = load i32, ptr %4093, align 4
  %4095 = getelementptr i8, ptr %4092, i32 %4094
  %4096 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4095) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4097 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 5
  store i32 %4096, ptr %4097, align 4
  br label %4098

4098:                                             ; preds = %4086, %4083
  %4099 = phi i32 [ %4085, %4083 ], [ %4096, %4086 ]
  %4100 = and i32 %4099, 16777215
  %4101 = or i32 %4100, 603979776
  %4102 = icmp eq i32 %4099, %4101
  br i1 %4102, label %4103, label %4107

4103:                                             ; preds = %4098
  %4104 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 1
  %4105 = load i8, ptr %4104, align 4, !range !15
  %4106 = icmp eq i8 %4105, 0
  br i1 %4106, label %4133, label %4107

4107:                                             ; preds = %4103, %4098
  %4108 = load i32, ptr %14, align 4
  store i32 %4108, ptr %2531, align 4
  %4109 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 5
  store i32 %4101, ptr %4109, align 4
  %4110 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 4
  %4111 = load i32, ptr %4110, align 4
  %4112 = icmp eq i32 %4111, 0
  br i1 %4112, label %4131, label %4113

4113:                                             ; preds = %4107
  %4114 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 2
  %4115 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 3
  br label %4116

4116:                                             ; preds = %4126, %4113
  %4117 = phi i32 [ 0, %4113 ], [ %4128, %4126 ]
  %4118 = phi i32 [ %4111, %4113 ], [ %4129, %4126 ]
  %4119 = and i32 %4118, 1
  %4120 = icmp eq i32 %4119, 0
  br i1 %4120, label %4126, label %4121

4121:                                             ; preds = %4116
  %4122 = load ptr, ptr %2, align 4
  %4123 = load i32, ptr %4114, align 4
  %4124 = add i32 %4123, %4117
  %4125 = load i32, ptr %4109, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4122, i32 noundef %4124, i32 noundef %4125) #11
  br label %4126

4126:                                             ; preds = %4121, %4116
  %4127 = load i32, ptr %4115, align 4
  %4128 = add i32 %4127, %4117
  %4129 = lshr i32 %4118, 1
  %4130 = icmp ult i32 %4118, 2
  br i1 %4130, label %4131, label %4116

4131:                                             ; preds = %4126, %4107
  %4132 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 1
  store i8 0, ptr %4132, align 4
  br label %4133

4133:                                             ; preds = %4131, %4103
  tail call fastcc void @gk104_ram_train(ptr noundef %2, i32 noundef -1139933184, i32 noundef -1543438336)
  %4134 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %4134, i32 noundef 1000) #11
  %4135 = load i32, ptr %14, align 4
  store i32 %4135, ptr %2531, align 4
  %4136 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 5
  store i32 %4099, ptr %4136, align 4
  %4137 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 4
  %4138 = load i32, ptr %4137, align 4
  %4139 = icmp eq i32 %4138, 0
  br i1 %4139, label %4158, label %4140

4140:                                             ; preds = %4133
  %4141 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 2
  %4142 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 18, i32 3
  br label %4143

4143:                                             ; preds = %4153, %4140
  %4144 = phi i32 [ 0, %4140 ], [ %4155, %4153 ]
  %4145 = phi i32 [ %4138, %4140 ], [ %4156, %4153 ]
  %4146 = and i32 %4145, 1
  %4147 = icmp eq i32 %4146, 0
  br i1 %4147, label %4153, label %4148

4148:                                             ; preds = %4143
  %4149 = load ptr, ptr %2, align 4
  %4150 = load i32, ptr %4141, align 4
  %4151 = add i32 %4150, %4144
  %4152 = load i32, ptr %4136, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4149, i32 noundef %4151, i32 noundef %4152) #11
  br label %4153

4153:                                             ; preds = %4148, %4143
  %4154 = load i32, ptr %4142, align 4
  %4155 = add i32 %4154, %4144
  %4156 = lshr i32 %4145, 1
  %4157 = icmp ult i32 %4145, 2
  br i1 %4157, label %4158, label %4143

4158:                                             ; preds = %4153, %4133, %4076, %4072
  %4159 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51
  %4160 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 3
  %4161 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 3
  %4162 = load i32, ptr %4161, align 4
  %4163 = load i32, ptr %4160, align 4
  %4164 = load i32, ptr %14, align 4
  %4165 = icmp eq i32 %4163, %4164
  br i1 %4165, label %4166, label %4169

4166:                                             ; preds = %4158
  %4167 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 3, i32 5
  %4168 = load i32, ptr %4167, align 4
  br label %4181

4169:                                             ; preds = %4158
  %4170 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4171 = load ptr, ptr %4170, align 4
  %4172 = getelementptr inbounds %struct.nvkm_fb, ptr %4171, i32 0, i32 1, i32 1
  %4173 = load ptr, ptr %4172, align 4
  %4174 = getelementptr inbounds %struct.nvkm_device, ptr %4173, i32 0, i32 11
  %4175 = load ptr, ptr %4174, align 4
  %4176 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 3, i32 2
  %4177 = load i32, ptr %4176, align 4
  %4178 = getelementptr i8, ptr %4175, i32 %4177
  %4179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4178) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4180 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 3, i32 5
  store i32 %4179, ptr %4180, align 4
  br label %4181

4181:                                             ; preds = %4169, %4166
  %4182 = phi i32 [ %4168, %4166 ], [ %4179, %4169 ]
  %4183 = and i32 %4182, -4096
  %4184 = or i32 %4183, %4162
  %4185 = icmp eq i32 %4182, %4184
  br i1 %4185, label %4186, label %4190

4186:                                             ; preds = %4181
  %4187 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 3, i32 1
  %4188 = load i8, ptr %4187, align 4, !range !15
  %4189 = icmp eq i8 %4188, 0
  br i1 %4189, label %4216, label %4190

4190:                                             ; preds = %4186, %4181
  %4191 = load i32, ptr %14, align 4
  store i32 %4191, ptr %4160, align 4
  %4192 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 3, i32 5
  store i32 %4184, ptr %4192, align 4
  %4193 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 3, i32 4
  %4194 = load i32, ptr %4193, align 4
  %4195 = icmp eq i32 %4194, 0
  br i1 %4195, label %4214, label %4196

4196:                                             ; preds = %4190
  %4197 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 3, i32 2
  %4198 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 3, i32 3
  br label %4199

4199:                                             ; preds = %4209, %4196
  %4200 = phi i32 [ 0, %4196 ], [ %4211, %4209 ]
  %4201 = phi i32 [ %4194, %4196 ], [ %4212, %4209 ]
  %4202 = and i32 %4201, 1
  %4203 = icmp eq i32 %4202, 0
  br i1 %4203, label %4209, label %4204

4204:                                             ; preds = %4199
  %4205 = load ptr, ptr %2, align 4
  %4206 = load i32, ptr %4197, align 4
  %4207 = add i32 %4206, %4200
  %4208 = load i32, ptr %4192, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4205, i32 noundef %4207, i32 noundef %4208) #11
  br label %4209

4209:                                             ; preds = %4204, %4199
  %4210 = load i32, ptr %4198, align 4
  %4211 = add i32 %4210, %4200
  %4212 = lshr i32 %4201, 1
  %4213 = icmp ult i32 %4201, 2
  br i1 %4213, label %4214, label %4199

4214:                                             ; preds = %4209, %4190
  %4215 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 3, i32 1
  store i8 0, ptr %4215, align 4
  br label %4216

4216:                                             ; preds = %4214, %4186
  %4217 = load i32, ptr %101, align 4
  %4218 = load i32, ptr %14, align 4
  store i32 %4218, ptr %4159, align 4
  %4219 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 0, i32 5
  store i32 %4217, ptr %4219, align 4
  %4220 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 0, i32 4
  %4221 = load i32, ptr %4220, align 4
  %4222 = icmp eq i32 %4221, 0
  br i1 %4222, label %4243, label %4223

4223:                                             ; preds = %4216
  %4224 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 0, i32 2
  %4225 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 0, i32 3
  br label %4226

4226:                                             ; preds = %4236, %4223
  %4227 = phi i32 [ 0, %4223 ], [ %4238, %4236 ]
  %4228 = phi i32 [ %4221, %4223 ], [ %4239, %4236 ]
  %4229 = and i32 %4228, 1
  %4230 = icmp eq i32 %4229, 0
  br i1 %4230, label %4236, label %4231

4231:                                             ; preds = %4226
  %4232 = load ptr, ptr %2, align 4
  %4233 = load i32, ptr %4224, align 4
  %4234 = add i32 %4233, %4227
  %4235 = load i32, ptr %4219, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4232, i32 noundef %4234, i32 noundef %4235) #11
  br label %4236

4236:                                             ; preds = %4231, %4226
  %4237 = load i32, ptr %4225, align 4
  %4238 = add i32 %4237, %4227
  %4239 = lshr i32 %4228, 1
  %4240 = icmp ult i32 %4228, 2
  br i1 %4240, label %4241, label %4226

4241:                                             ; preds = %4236
  %4242 = load i32, ptr %14, align 4
  br label %4243

4243:                                             ; preds = %4241, %4216
  %4244 = phi i32 [ %4242, %4241 ], [ %4218, %4216 ]
  %4245 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 8
  %4246 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 8
  %4247 = load i32, ptr %4246, align 4
  %4248 = load i32, ptr %4245, align 4
  %4249 = icmp eq i32 %4248, %4244
  br i1 %4249, label %4250, label %4253

4250:                                             ; preds = %4243
  %4251 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 8, i32 5
  %4252 = load i32, ptr %4251, align 4
  br label %4265

4253:                                             ; preds = %4243
  %4254 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4255 = load ptr, ptr %4254, align 4
  %4256 = getelementptr inbounds %struct.nvkm_fb, ptr %4255, i32 0, i32 1, i32 1
  %4257 = load ptr, ptr %4256, align 4
  %4258 = getelementptr inbounds %struct.nvkm_device, ptr %4257, i32 0, i32 11
  %4259 = load ptr, ptr %4258, align 4
  %4260 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 8, i32 2
  %4261 = load i32, ptr %4260, align 4
  %4262 = getelementptr i8, ptr %4259, i32 %4261
  %4263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4262) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4264 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 8, i32 5
  store i32 %4263, ptr %4264, align 4
  br label %4265

4265:                                             ; preds = %4253, %4250
  %4266 = phi i32 [ %4252, %4250 ], [ %4263, %4253 ]
  %4267 = and i32 %4266, -4096
  %4268 = or i32 %4267, %4247
  %4269 = icmp eq i32 %4266, %4268
  br i1 %4269, label %4270, label %4274

4270:                                             ; preds = %4265
  %4271 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 8, i32 1
  %4272 = load i8, ptr %4271, align 4, !range !15
  %4273 = icmp eq i8 %4272, 0
  br i1 %4273, label %4300, label %4274

4274:                                             ; preds = %4270, %4265
  %4275 = load i32, ptr %14, align 4
  store i32 %4275, ptr %4245, align 4
  %4276 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 8, i32 5
  store i32 %4268, ptr %4276, align 4
  %4277 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 8, i32 4
  %4278 = load i32, ptr %4277, align 4
  %4279 = icmp eq i32 %4278, 0
  br i1 %4279, label %4298, label %4280

4280:                                             ; preds = %4274
  %4281 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 8, i32 2
  %4282 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 8, i32 3
  br label %4283

4283:                                             ; preds = %4293, %4280
  %4284 = phi i32 [ 0, %4280 ], [ %4295, %4293 ]
  %4285 = phi i32 [ %4278, %4280 ], [ %4296, %4293 ]
  %4286 = and i32 %4285, 1
  %4287 = icmp eq i32 %4286, 0
  br i1 %4287, label %4293, label %4288

4288:                                             ; preds = %4283
  %4289 = load ptr, ptr %2, align 4
  %4290 = load i32, ptr %4281, align 4
  %4291 = add i32 %4290, %4284
  %4292 = load i32, ptr %4276, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4289, i32 noundef %4291, i32 noundef %4292) #11
  br label %4293

4293:                                             ; preds = %4288, %4283
  %4294 = load i32, ptr %4282, align 4
  %4295 = add i32 %4294, %4284
  %4296 = lshr i32 %4285, 1
  %4297 = icmp ult i32 %4285, 2
  br i1 %4297, label %4298, label %4283

4298:                                             ; preds = %4293, %4274
  %4299 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 8, i32 1
  store i8 0, ptr %4299, align 4
  br label %4300

4300:                                             ; preds = %4298, %4270
  %4301 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %4301, i32 noundef 1000) #11
  %4302 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1
  %4303 = load i32, ptr %102, align 4
  %4304 = load i32, ptr %4302, align 4
  %4305 = load i32, ptr %14, align 4
  %4306 = icmp eq i32 %4304, %4305
  br i1 %4306, label %4307, label %4310

4307:                                             ; preds = %4300
  %4308 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  %4309 = load i32, ptr %4308, align 4
  br label %4322

4310:                                             ; preds = %4300
  %4311 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4312 = load ptr, ptr %4311, align 4
  %4313 = getelementptr inbounds %struct.nvkm_fb, ptr %4312, i32 0, i32 1, i32 1
  %4314 = load ptr, ptr %4313, align 4
  %4315 = getelementptr inbounds %struct.nvkm_device, ptr %4314, i32 0, i32 11
  %4316 = load ptr, ptr %4315, align 4
  %4317 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %4318 = load i32, ptr %4317, align 4
  %4319 = getelementptr i8, ptr %4316, i32 %4318
  %4320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4319) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4321 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %4320, ptr %4321, align 4
  br label %4322

4322:                                             ; preds = %4310, %4307
  %4323 = phi i32 [ %4309, %4307 ], [ %4320, %4310 ]
  %4324 = and i32 %4323, -4096
  %4325 = or i32 %4324, %4303
  %4326 = icmp eq i32 %4323, %4325
  br i1 %4326, label %4327, label %4331

4327:                                             ; preds = %4322
  %4328 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 1
  %4329 = load i8, ptr %4328, align 4, !range !15
  %4330 = icmp eq i8 %4329, 0
  br i1 %4330, label %4357, label %4331

4331:                                             ; preds = %4327, %4322
  %4332 = load i32, ptr %14, align 4
  store i32 %4332, ptr %4302, align 4
  %4333 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 5
  store i32 %4325, ptr %4333, align 4
  %4334 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 4
  %4335 = load i32, ptr %4334, align 4
  %4336 = icmp eq i32 %4335, 0
  br i1 %4336, label %4355, label %4337

4337:                                             ; preds = %4331
  %4338 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 2
  %4339 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 3
  br label %4340

4340:                                             ; preds = %4350, %4337
  %4341 = phi i32 [ 0, %4337 ], [ %4352, %4350 ]
  %4342 = phi i32 [ %4335, %4337 ], [ %4353, %4350 ]
  %4343 = and i32 %4342, 1
  %4344 = icmp eq i32 %4343, 0
  br i1 %4344, label %4350, label %4345

4345:                                             ; preds = %4340
  %4346 = load ptr, ptr %2, align 4
  %4347 = load i32, ptr %4338, align 4
  %4348 = add i32 %4347, %4341
  %4349 = load i32, ptr %4333, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4346, i32 noundef %4348, i32 noundef %4349) #11
  br label %4350

4350:                                             ; preds = %4345, %4340
  %4351 = load i32, ptr %4339, align 4
  %4352 = add i32 %4351, %4341
  %4353 = lshr i32 %4342, 1
  %4354 = icmp ult i32 %4342, 2
  br i1 %4354, label %4355, label %4340

4355:                                             ; preds = %4350, %4331
  %4356 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 1, i32 1
  store i8 0, ptr %4356, align 4
  br label %4357

4357:                                             ; preds = %4355, %4327
  %4358 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5
  %4359 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 5
  %4360 = load i32, ptr %4359, align 4
  %4361 = and i32 %4360, -5
  %4362 = load i32, ptr %4358, align 4
  %4363 = load i32, ptr %14, align 4
  %4364 = icmp eq i32 %4362, %4363
  br i1 %4364, label %4365, label %4368

4365:                                             ; preds = %4357
  %4366 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 5
  %4367 = load i32, ptr %4366, align 4
  br label %4380

4368:                                             ; preds = %4357
  %4369 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4370 = load ptr, ptr %4369, align 4
  %4371 = getelementptr inbounds %struct.nvkm_fb, ptr %4370, i32 0, i32 1, i32 1
  %4372 = load ptr, ptr %4371, align 4
  %4373 = getelementptr inbounds %struct.nvkm_device, ptr %4372, i32 0, i32 11
  %4374 = load ptr, ptr %4373, align 4
  %4375 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 2
  %4376 = load i32, ptr %4375, align 4
  %4377 = getelementptr i8, ptr %4374, i32 %4376
  %4378 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4377) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4379 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 5
  store i32 %4378, ptr %4379, align 4
  br label %4380

4380:                                             ; preds = %4368, %4365
  %4381 = phi i32 [ %4367, %4365 ], [ %4378, %4368 ]
  %4382 = and i32 %4381, -4096
  %4383 = or i32 %4382, %4361
  %4384 = icmp eq i32 %4381, %4383
  br i1 %4384, label %4385, label %4389

4385:                                             ; preds = %4380
  %4386 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 1
  %4387 = load i8, ptr %4386, align 4, !range !15
  %4388 = icmp eq i8 %4387, 0
  br i1 %4388, label %4415, label %4389

4389:                                             ; preds = %4385, %4380
  %4390 = load i32, ptr %14, align 4
  store i32 %4390, ptr %4358, align 4
  %4391 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 5
  store i32 %4383, ptr %4391, align 4
  %4392 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 4
  %4393 = load i32, ptr %4392, align 4
  %4394 = icmp eq i32 %4393, 0
  br i1 %4394, label %4413, label %4395

4395:                                             ; preds = %4389
  %4396 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 2
  %4397 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 3
  br label %4398

4398:                                             ; preds = %4408, %4395
  %4399 = phi i32 [ 0, %4395 ], [ %4410, %4408 ]
  %4400 = phi i32 [ %4393, %4395 ], [ %4411, %4408 ]
  %4401 = and i32 %4400, 1
  %4402 = icmp eq i32 %4401, 0
  br i1 %4402, label %4408, label %4403

4403:                                             ; preds = %4398
  %4404 = load ptr, ptr %2, align 4
  %4405 = load i32, ptr %4396, align 4
  %4406 = add i32 %4405, %4399
  %4407 = load i32, ptr %4391, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4404, i32 noundef %4406, i32 noundef %4407) #11
  br label %4408

4408:                                             ; preds = %4403, %4398
  %4409 = load i32, ptr %4397, align 4
  %4410 = add i32 %4409, %4399
  %4411 = lshr i32 %4400, 1
  %4412 = icmp ult i32 %4400, 2
  br i1 %4412, label %4413, label %4398

4413:                                             ; preds = %4408, %4389
  %4414 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 1
  store i8 0, ptr %4414, align 4
  br label %4415

4415:                                             ; preds = %4413, %4385
  %4416 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 6
  %4417 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 6
  %4418 = load i32, ptr %4417, align 4
  %4419 = load i32, ptr %4416, align 4
  %4420 = load i32, ptr %14, align 4
  %4421 = icmp eq i32 %4419, %4420
  br i1 %4421, label %4422, label %4425

4422:                                             ; preds = %4415
  %4423 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 6, i32 5
  %4424 = load i32, ptr %4423, align 4
  br label %4437

4425:                                             ; preds = %4415
  %4426 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4427 = load ptr, ptr %4426, align 4
  %4428 = getelementptr inbounds %struct.nvkm_fb, ptr %4427, i32 0, i32 1, i32 1
  %4429 = load ptr, ptr %4428, align 4
  %4430 = getelementptr inbounds %struct.nvkm_device, ptr %4429, i32 0, i32 11
  %4431 = load ptr, ptr %4430, align 4
  %4432 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 6, i32 2
  %4433 = load i32, ptr %4432, align 4
  %4434 = getelementptr i8, ptr %4431, i32 %4433
  %4435 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4434) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4436 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 6, i32 5
  store i32 %4435, ptr %4436, align 4
  br label %4437

4437:                                             ; preds = %4425, %4422
  %4438 = phi i32 [ %4424, %4422 ], [ %4435, %4425 ]
  %4439 = and i32 %4438, -4096
  %4440 = or i32 %4439, %4418
  %4441 = icmp eq i32 %4438, %4440
  br i1 %4441, label %4442, label %4446

4442:                                             ; preds = %4437
  %4443 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 6, i32 1
  %4444 = load i8, ptr %4443, align 4, !range !15
  %4445 = icmp eq i8 %4444, 0
  br i1 %4445, label %4472, label %4446

4446:                                             ; preds = %4442, %4437
  %4447 = load i32, ptr %14, align 4
  store i32 %4447, ptr %4416, align 4
  %4448 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 6, i32 5
  store i32 %4440, ptr %4448, align 4
  %4449 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 6, i32 4
  %4450 = load i32, ptr %4449, align 4
  %4451 = icmp eq i32 %4450, 0
  br i1 %4451, label %4470, label %4452

4452:                                             ; preds = %4446
  %4453 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 6, i32 2
  %4454 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 6, i32 3
  br label %4455

4455:                                             ; preds = %4465, %4452
  %4456 = phi i32 [ 0, %4452 ], [ %4467, %4465 ]
  %4457 = phi i32 [ %4450, %4452 ], [ %4468, %4465 ]
  %4458 = and i32 %4457, 1
  %4459 = icmp eq i32 %4458, 0
  br i1 %4459, label %4465, label %4460

4460:                                             ; preds = %4455
  %4461 = load ptr, ptr %2, align 4
  %4462 = load i32, ptr %4453, align 4
  %4463 = add i32 %4462, %4456
  %4464 = load i32, ptr %4448, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4461, i32 noundef %4463, i32 noundef %4464) #11
  br label %4465

4465:                                             ; preds = %4460, %4455
  %4466 = load i32, ptr %4454, align 4
  %4467 = add i32 %4466, %4456
  %4468 = lshr i32 %4457, 1
  %4469 = icmp ult i32 %4457, 2
  br i1 %4469, label %4470, label %4455

4470:                                             ; preds = %4465, %4446
  %4471 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 6, i32 1
  store i8 0, ptr %4471, align 4
  br label %4472

4472:                                             ; preds = %4470, %4442
  %4473 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 7
  %4474 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 7
  %4475 = load i32, ptr %4474, align 4
  %4476 = load i32, ptr %4473, align 4
  %4477 = load i32, ptr %14, align 4
  %4478 = icmp eq i32 %4476, %4477
  br i1 %4478, label %4479, label %4482

4479:                                             ; preds = %4472
  %4480 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 7, i32 5
  %4481 = load i32, ptr %4480, align 4
  br label %4494

4482:                                             ; preds = %4472
  %4483 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4484 = load ptr, ptr %4483, align 4
  %4485 = getelementptr inbounds %struct.nvkm_fb, ptr %4484, i32 0, i32 1, i32 1
  %4486 = load ptr, ptr %4485, align 4
  %4487 = getelementptr inbounds %struct.nvkm_device, ptr %4486, i32 0, i32 11
  %4488 = load ptr, ptr %4487, align 4
  %4489 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 7, i32 2
  %4490 = load i32, ptr %4489, align 4
  %4491 = getelementptr i8, ptr %4488, i32 %4490
  %4492 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4491) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4493 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 7, i32 5
  store i32 %4492, ptr %4493, align 4
  br label %4494

4494:                                             ; preds = %4482, %4479
  %4495 = phi i32 [ %4481, %4479 ], [ %4492, %4482 ]
  %4496 = and i32 %4495, -4096
  %4497 = or i32 %4496, %4475
  %4498 = icmp eq i32 %4495, %4497
  br i1 %4498, label %4499, label %4503

4499:                                             ; preds = %4494
  %4500 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 7, i32 1
  %4501 = load i8, ptr %4500, align 4, !range !15
  %4502 = icmp eq i8 %4501, 0
  br i1 %4502, label %4529, label %4503

4503:                                             ; preds = %4499, %4494
  %4504 = load i32, ptr %14, align 4
  store i32 %4504, ptr %4473, align 4
  %4505 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 7, i32 5
  store i32 %4497, ptr %4505, align 4
  %4506 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 7, i32 4
  %4507 = load i32, ptr %4506, align 4
  %4508 = icmp eq i32 %4507, 0
  br i1 %4508, label %4527, label %4509

4509:                                             ; preds = %4503
  %4510 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 7, i32 2
  %4511 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 7, i32 3
  br label %4512

4512:                                             ; preds = %4522, %4509
  %4513 = phi i32 [ 0, %4509 ], [ %4524, %4522 ]
  %4514 = phi i32 [ %4507, %4509 ], [ %4525, %4522 ]
  %4515 = and i32 %4514, 1
  %4516 = icmp eq i32 %4515, 0
  br i1 %4516, label %4522, label %4517

4517:                                             ; preds = %4512
  %4518 = load ptr, ptr %2, align 4
  %4519 = load i32, ptr %4510, align 4
  %4520 = add i32 %4519, %4513
  %4521 = load i32, ptr %4505, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4518, i32 noundef %4520, i32 noundef %4521) #11
  br label %4522

4522:                                             ; preds = %4517, %4512
  %4523 = load i32, ptr %4511, align 4
  %4524 = add i32 %4523, %4513
  %4525 = lshr i32 %4514, 1
  %4526 = icmp ult i32 %4514, 2
  br i1 %4526, label %4527, label %4512

4527:                                             ; preds = %4522, %4503
  %4528 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 7, i32 1
  store i8 0, ptr %4528, align 4
  br label %4529

4529:                                             ; preds = %4527, %4499
  br i1 %8, label %4636, label %4530

4530:                                             ; preds = %4529
  %4531 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 2
  %4532 = load i32, ptr %4531, align 4
  %4533 = icmp eq i32 %4532, 0
  br i1 %4533, label %4636, label %4534

4534:                                             ; preds = %4530
  %4535 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5
  %4536 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 6
  %4537 = load i32, ptr %4536, align 4
  %4538 = load i32, ptr %4535, align 4
  %4539 = load i32, ptr %14, align 4
  %4540 = icmp eq i32 %4538, %4539
  br i1 %4540, label %4541, label %4544

4541:                                             ; preds = %4534
  %4542 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  %4543 = load i32, ptr %4542, align 4
  br label %4554

4544:                                             ; preds = %4534
  %4545 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4546 = load ptr, ptr %4545, align 4
  %4547 = getelementptr inbounds %struct.nvkm_fb, ptr %4546, i32 0, i32 1, i32 1
  %4548 = load ptr, ptr %4547, align 4
  %4549 = getelementptr inbounds %struct.nvkm_device, ptr %4548, i32 0, i32 11
  %4550 = load ptr, ptr %4549, align 4
  %4551 = getelementptr i8, ptr %4550, i32 %4532
  %4552 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4551) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4553 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %4552, ptr %4553, align 4
  br label %4554

4554:                                             ; preds = %4544, %4541
  %4555 = phi i32 [ %4543, %4541 ], [ %4552, %4544 ]
  %4556 = and i32 %4555, -12289
  %4557 = or i32 %4556, %4537
  %4558 = icmp eq i32 %4555, %4557
  br i1 %4558, label %4559, label %4563

4559:                                             ; preds = %4554
  %4560 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 1
  %4561 = load i8, ptr %4560, align 4, !range !15
  %4562 = icmp eq i8 %4561, 0
  br i1 %4562, label %4588, label %4563

4563:                                             ; preds = %4559, %4554
  %4564 = load i32, ptr %14, align 4
  store i32 %4564, ptr %4535, align 4
  %4565 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %4557, ptr %4565, align 4
  %4566 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 4
  %4567 = load i32, ptr %4566, align 4
  %4568 = icmp eq i32 %4567, 0
  br i1 %4568, label %4586, label %4569

4569:                                             ; preds = %4563
  %4570 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 3
  br label %4571

4571:                                             ; preds = %4581, %4569
  %4572 = phi i32 [ 0, %4569 ], [ %4583, %4581 ]
  %4573 = phi i32 [ %4567, %4569 ], [ %4584, %4581 ]
  %4574 = and i32 %4573, 1
  %4575 = icmp eq i32 %4574, 0
  br i1 %4575, label %4581, label %4576

4576:                                             ; preds = %4571
  %4577 = load ptr, ptr %2, align 4
  %4578 = load i32, ptr %4531, align 4
  %4579 = add i32 %4578, %4572
  %4580 = load i32, ptr %4565, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4577, i32 noundef %4579, i32 noundef %4580) #11
  br label %4581

4581:                                             ; preds = %4576, %4571
  %4582 = load i32, ptr %4570, align 4
  %4583 = add i32 %4582, %4572
  %4584 = lshr i32 %4573, 1
  %4585 = icmp ult i32 %4573, 2
  br i1 %4585, label %4586, label %4571

4586:                                             ; preds = %4581, %4563
  %4587 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 1
  store i8 0, ptr %4587, align 4
  br label %4588

4588:                                             ; preds = %4586, %4559
  %4589 = load i32, ptr %4535, align 4
  %4590 = load i32, ptr %14, align 4
  %4591 = icmp eq i32 %4589, %4590
  br i1 %4591, label %4592, label %4595

4592:                                             ; preds = %4588
  %4593 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  %4594 = load i32, ptr %4593, align 4
  br label %4606

4595:                                             ; preds = %4588
  %4596 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4597 = load ptr, ptr %4596, align 4
  %4598 = getelementptr inbounds %struct.nvkm_fb, ptr %4597, i32 0, i32 1, i32 1
  %4599 = load ptr, ptr %4598, align 4
  %4600 = getelementptr inbounds %struct.nvkm_device, ptr %4599, i32 0, i32 11
  %4601 = load ptr, ptr %4600, align 4
  %4602 = load i32, ptr %4531, align 4
  %4603 = getelementptr i8, ptr %4601, i32 %4602
  %4604 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4603) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4605 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %4604, ptr %4605, align 4
  br label %4606

4606:                                             ; preds = %4595, %4592
  %4607 = phi i32 [ %4594, %4592 ], [ %4604, %4595 ]
  %4608 = icmp eq i32 %4555, %4607
  br i1 %4608, label %4636, label %4609

4609:                                             ; preds = %4606
  %4610 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7
  %4611 = load i32, ptr %14, align 4
  store i32 %4611, ptr %4610, align 4
  %4612 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 5
  store i32 1, ptr %4612, align 4
  %4613 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 4
  %4614 = load i32, ptr %4613, align 4
  %4615 = icmp eq i32 %4614, 0
  br i1 %4615, label %4634, label %4616

4616:                                             ; preds = %4609
  %4617 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 2
  %4618 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 7, i32 3
  br label %4619

4619:                                             ; preds = %4629, %4616
  %4620 = phi i32 [ 0, %4616 ], [ %4631, %4629 ]
  %4621 = phi i32 [ %4614, %4616 ], [ %4632, %4629 ]
  %4622 = and i32 %4621, 1
  %4623 = icmp eq i32 %4622, 0
  br i1 %4623, label %4629, label %4624

4624:                                             ; preds = %4619
  %4625 = load ptr, ptr %2, align 4
  %4626 = load i32, ptr %4617, align 4
  %4627 = add i32 %4626, %4620
  %4628 = load i32, ptr %4612, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4625, i32 noundef %4627, i32 noundef %4628) #11
  br label %4629

4629:                                             ; preds = %4624, %4619
  %4630 = load i32, ptr %4618, align 4
  %4631 = add i32 %4630, %4620
  %4632 = lshr i32 %4621, 1
  %4633 = icmp ult i32 %4621, 2
  br i1 %4633, label %4634, label %4619

4634:                                             ; preds = %4629, %4609
  %4635 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %4635, i32 noundef 20000) #11
  br label %4636

4636:                                             ; preds = %4634, %4606, %4530, %4529
  %4637 = load i32, ptr %300, align 4
  %4638 = load i32, ptr %14, align 4
  %4639 = icmp eq i32 %4637, %4638
  br i1 %4639, label %4640, label %4643

4640:                                             ; preds = %4636
  %4641 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %4642 = load i32, ptr %4641, align 4
  br label %4655

4643:                                             ; preds = %4636
  %4644 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4645 = load ptr, ptr %4644, align 4
  %4646 = getelementptr inbounds %struct.nvkm_fb, ptr %4645, i32 0, i32 1, i32 1
  %4647 = load ptr, ptr %4646, align 4
  %4648 = getelementptr inbounds %struct.nvkm_device, ptr %4647, i32 0, i32 11
  %4649 = load ptr, ptr %4648, align 4
  %4650 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %4651 = load i32, ptr %4650, align 4
  %4652 = getelementptr i8, ptr %4649, i32 %4651
  %4653 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4652) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4654 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %4653, ptr %4654, align 4
  br label %4655

4655:                                             ; preds = %4643, %4640
  %4656 = phi i32 [ %4642, %4640 ], [ %4653, %4643 ]
  %4657 = or i32 %4656, -2147483648
  %4658 = icmp eq i32 %4656, %4657
  br i1 %4658, label %4659, label %4663

4659:                                             ; preds = %4655
  %4660 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %4661 = load i8, ptr %4660, align 4, !range !15
  %4662 = icmp eq i8 %4661, 0
  br i1 %4662, label %4689, label %4663

4663:                                             ; preds = %4659, %4655
  %4664 = load i32, ptr %14, align 4
  store i32 %4664, ptr %300, align 4
  %4665 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %4657, ptr %4665, align 4
  %4666 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %4667 = load i32, ptr %4666, align 4
  %4668 = icmp eq i32 %4667, 0
  br i1 %4668, label %4687, label %4669

4669:                                             ; preds = %4663
  %4670 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %4671 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %4672

4672:                                             ; preds = %4682, %4669
  %4673 = phi i32 [ 0, %4669 ], [ %4684, %4682 ]
  %4674 = phi i32 [ %4667, %4669 ], [ %4685, %4682 ]
  %4675 = and i32 %4674, 1
  %4676 = icmp eq i32 %4675, 0
  br i1 %4676, label %4682, label %4677

4677:                                             ; preds = %4672
  %4678 = load ptr, ptr %2, align 4
  %4679 = load i32, ptr %4670, align 4
  %4680 = add i32 %4679, %4673
  %4681 = load i32, ptr %4665, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4678, i32 noundef %4680, i32 noundef %4681) #11
  br label %4682

4682:                                             ; preds = %4677, %4672
  %4683 = load i32, ptr %4671, align 4
  %4684 = add i32 %4683, %4673
  %4685 = lshr i32 %4674, 1
  %4686 = icmp ult i32 %4674, 2
  br i1 %4686, label %4687, label %4672

4687:                                             ; preds = %4682, %4663
  %4688 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %4688, align 4
  br label %4689

4689:                                             ; preds = %4687, %4659
  %4690 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 57
  %4691 = load i32, ptr %14, align 4
  store i32 %4691, ptr %4690, align 4
  %4692 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 57, i32 5
  store i32 1, ptr %4692, align 4
  %4693 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 57, i32 4
  %4694 = load i32, ptr %4693, align 4
  %4695 = icmp eq i32 %4694, 0
  br i1 %4695, label %4716, label %4696

4696:                                             ; preds = %4689
  %4697 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 57, i32 2
  %4698 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 57, i32 3
  br label %4699

4699:                                             ; preds = %4709, %4696
  %4700 = phi i32 [ 0, %4696 ], [ %4711, %4709 ]
  %4701 = phi i32 [ %4694, %4696 ], [ %4712, %4709 ]
  %4702 = and i32 %4701, 1
  %4703 = icmp eq i32 %4702, 0
  br i1 %4703, label %4709, label %4704

4704:                                             ; preds = %4699
  %4705 = load ptr, ptr %2, align 4
  %4706 = load i32, ptr %4697, align 4
  %4707 = add i32 %4706, %4700
  %4708 = load i32, ptr %4692, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4705, i32 noundef %4707, i32 noundef %4708) #11
  br label %4709

4709:                                             ; preds = %4704, %4699
  %4710 = load i32, ptr %4698, align 4
  %4711 = add i32 %4710, %4700
  %4712 = lshr i32 %4701, 1
  %4713 = icmp ult i32 %4701, 2
  br i1 %4713, label %4714, label %4699

4714:                                             ; preds = %4709
  %4715 = load i32, ptr %14, align 4
  br label %4716

4716:                                             ; preds = %4714, %4689
  %4717 = phi i32 [ %4715, %4714 ], [ %4691, %4689 ]
  %4718 = load i32, ptr %300, align 4
  %4719 = icmp eq i32 %4718, %4717
  br i1 %4719, label %4720, label %4723

4720:                                             ; preds = %4716
  %4721 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %4722 = load i32, ptr %4721, align 4
  br label %4735

4723:                                             ; preds = %4716
  %4724 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4725 = load ptr, ptr %4724, align 4
  %4726 = getelementptr inbounds %struct.nvkm_fb, ptr %4725, i32 0, i32 1, i32 1
  %4727 = load ptr, ptr %4726, align 4
  %4728 = getelementptr inbounds %struct.nvkm_device, ptr %4727, i32 0, i32 11
  %4729 = load ptr, ptr %4728, align 4
  %4730 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %4731 = load i32, ptr %4730, align 4
  %4732 = getelementptr i8, ptr %4729, i32 %4731
  %4733 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4732) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4734 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %4733, ptr %4734, align 4
  br label %4735

4735:                                             ; preds = %4723, %4720
  %4736 = phi i32 [ %4722, %4720 ], [ %4733, %4723 ]
  %4737 = and i32 %4736, 2147483647
  %4738 = icmp sgt i32 %4736, -1
  br i1 %4738, label %4739, label %4743

4739:                                             ; preds = %4735
  %4740 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %4741 = load i8, ptr %4740, align 4, !range !15
  %4742 = icmp eq i8 %4741, 0
  br i1 %4742, label %4769, label %4743

4743:                                             ; preds = %4739, %4735
  %4744 = load i32, ptr %14, align 4
  store i32 %4744, ptr %300, align 4
  %4745 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  store i32 %4737, ptr %4745, align 4
  %4746 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %4747 = load i32, ptr %4746, align 4
  %4748 = icmp eq i32 %4747, 0
  br i1 %4748, label %4767, label %4749

4749:                                             ; preds = %4743
  %4750 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %4751 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %4752

4752:                                             ; preds = %4762, %4749
  %4753 = phi i32 [ 0, %4749 ], [ %4764, %4762 ]
  %4754 = phi i32 [ %4747, %4749 ], [ %4765, %4762 ]
  %4755 = and i32 %4754, 1
  %4756 = icmp eq i32 %4755, 0
  br i1 %4756, label %4762, label %4757

4757:                                             ; preds = %4752
  %4758 = load ptr, ptr %2, align 4
  %4759 = load i32, ptr %4750, align 4
  %4760 = add i32 %4759, %4753
  %4761 = load i32, ptr %4745, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4758, i32 noundef %4760, i32 noundef %4761) #11
  br label %4762

4762:                                             ; preds = %4757, %4752
  %4763 = load i32, ptr %4751, align 4
  %4764 = add i32 %4763, %4753
  %4765 = lshr i32 %4754, 1
  %4766 = icmp ult i32 %4754, 2
  br i1 %4766, label %4767, label %4752

4767:                                             ; preds = %4762, %4743
  %4768 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %4768, align 4
  br label %4769

4769:                                             ; preds = %4767, %4739
  %4770 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %4770, i32 noundef 1000) #11
  %4771 = load ptr, ptr %68, align 4
  %4772 = getelementptr inbounds %struct.nvkm_fb, ptr %4771, i32 0, i32 1, i32 1
  %4773 = load ptr, ptr %4772, align 4
  %4774 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 2
  %4775 = load i32, ptr %4774, align 4
  %4776 = and i32 %4775, 4095
  %4777 = or i32 %4776, 1114112
  %4778 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 5
  %4779 = load i32, ptr %4778, align 4
  %4780 = and i32 %4779, 411076608
  %4781 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 5
  %4782 = getelementptr inbounds %struct.nvkm_device, ptr %4773, i32 0, i32 11
  br label %4783

4783:                                             ; preds = %4797, %4769
  %4784 = phi i32 [ 0, %4769 ], [ %4798, %4797 ]
  %4785 = phi i32 [ %4777, %4769 ], [ %4799, %4797 ]
  %4786 = load i32, ptr %4781, align 4
  %4787 = shl nuw nsw i32 1, %4784
  %4788 = and i32 %4786, %4787
  %4789 = icmp eq i32 %4788, 0
  br i1 %4789, label %4797, label %4790

4790:                                             ; preds = %4783
  %4791 = load ptr, ptr %4782, align 4
  %4792 = getelementptr i8, ptr %4791, i32 %4785
  %4793 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4792) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4794 = and i32 %4793, -411076609
  %4795 = or i32 %4794, %4780
  %4796 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4796, i32 noundef %4785, i32 noundef %4795) #11
  br label %4797

4797:                                             ; preds = %4790, %4783
  %4798 = add nuw nsw i32 %4784, 1
  %4799 = add nuw nsw i32 %4785, 4096
  %4800 = icmp eq i32 %4798, 16
  br i1 %4800, label %4801, label %4783

4801:                                             ; preds = %4797
  %4802 = load i32, ptr %642, align 4
  %4803 = load i32, ptr %14, align 4
  %4804 = icmp eq i32 %4802, %4803
  br i1 %4804, label %4805, label %4808

4805:                                             ; preds = %4801
  %4806 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 5
  %4807 = load i32, ptr %4806, align 4
  br label %4820

4808:                                             ; preds = %4801
  %4809 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4810 = load ptr, ptr %4809, align 4
  %4811 = getelementptr inbounds %struct.nvkm_fb, ptr %4810, i32 0, i32 1, i32 1
  %4812 = load ptr, ptr %4811, align 4
  %4813 = getelementptr inbounds %struct.nvkm_device, ptr %4812, i32 0, i32 11
  %4814 = load ptr, ptr %4813, align 4
  %4815 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 2
  %4816 = load i32, ptr %4815, align 4
  %4817 = getelementptr i8, ptr %4814, i32 %4816
  %4818 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4817) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4819 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 5
  store i32 %4818, ptr %4819, align 4
  br label %4820

4820:                                             ; preds = %4808, %4805
  %4821 = phi i32 [ %4807, %4805 ], [ %4818, %4808 ]
  %4822 = and i32 %4821, -287056
  %4823 = load i32, ptr %682, align 4
  %4824 = and i32 %4823, 262144
  %4825 = icmp eq i32 %4824, 0
  br i1 %4825, label %4826, label %4831

4826:                                             ; preds = %4820
  %4827 = and i32 %4823, 131072
  %4828 = icmp eq i32 %4827, 0
  %4829 = select i1 %4828, i32 8207, i32 11
  %4830 = or i32 %4829, %4822
  br label %4833

4831:                                             ; preds = %4820
  %4832 = or i32 %4822, 262223
  br label %4833

4833:                                             ; preds = %4831, %4826
  %4834 = phi i32 [ %4832, %4831 ], [ %4830, %4826 ]
  %4835 = load i32, ptr %14, align 4
  store i32 %4835, ptr %642, align 4
  %4836 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 5
  store i32 %4834, ptr %4836, align 4
  %4837 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 4
  %4838 = load i32, ptr %4837, align 4
  %4839 = icmp eq i32 %4838, 0
  br i1 %4839, label %4858, label %4840

4840:                                             ; preds = %4833
  %4841 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 2
  %4842 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 48, i32 3
  br label %4843

4843:                                             ; preds = %4853, %4840
  %4844 = phi i32 [ 0, %4840 ], [ %4855, %4853 ]
  %4845 = phi i32 [ %4838, %4840 ], [ %4856, %4853 ]
  %4846 = and i32 %4845, 1
  %4847 = icmp eq i32 %4846, 0
  br i1 %4847, label %4853, label %4848

4848:                                             ; preds = %4843
  %4849 = load ptr, ptr %2, align 4
  %4850 = load i32, ptr %4841, align 4
  %4851 = add i32 %4850, %4844
  %4852 = load i32, ptr %4836, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4849, i32 noundef %4851, i32 noundef %4852) #11
  br label %4853

4853:                                             ; preds = %4848, %4843
  %4854 = load i32, ptr %4842, align 4
  %4855 = add i32 %4854, %4844
  %4856 = lshr i32 %4845, 1
  %4857 = icmp ult i32 %4845, 2
  br i1 %4857, label %4858, label %4843

4858:                                             ; preds = %4853, %4833
  %4859 = load i32, ptr %1715, align 8
  %4860 = icmp eq i32 %4859, 1
  br i1 %4860, label %4861, label %4906

4861:                                             ; preds = %4858
  %4862 = load i32, ptr %2366, align 4
  %4863 = load i32, ptr %14, align 4
  %4864 = icmp eq i32 %4862, %4863
  br i1 %4864, label %4865, label %4868

4865:                                             ; preds = %4861
  %4866 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %4867 = load i32, ptr %4866, align 4
  br label %4880

4868:                                             ; preds = %4861
  %4869 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4870 = load ptr, ptr %4869, align 4
  %4871 = getelementptr inbounds %struct.nvkm_fb, ptr %4870, i32 0, i32 1, i32 1
  %4872 = load ptr, ptr %4871, align 4
  %4873 = getelementptr inbounds %struct.nvkm_device, ptr %4872, i32 0, i32 11
  %4874 = load ptr, ptr %4873, align 4
  %4875 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %4876 = load i32, ptr %4875, align 4
  %4877 = getelementptr i8, ptr %4874, i32 %4876
  %4878 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4877) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4879 = load i32, ptr %14, align 4
  br label %4880

4880:                                             ; preds = %4868, %4865
  %4881 = phi i32 [ %4862, %4865 ], [ %4879, %4868 ]
  %4882 = phi i32 [ %4867, %4865 ], [ %4878, %4868 ]
  %4883 = or i32 %4882, 1
  store i32 %4881, ptr %2366, align 4
  %4884 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %4883, ptr %4884, align 4
  %4885 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %4886 = load i32, ptr %4885, align 4
  %4887 = icmp eq i32 %4886, 0
  br i1 %4887, label %4906, label %4888

4888:                                             ; preds = %4880
  %4889 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %4890 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %4891

4891:                                             ; preds = %4901, %4888
  %4892 = phi i32 [ 0, %4888 ], [ %4903, %4901 ]
  %4893 = phi i32 [ %4886, %4888 ], [ %4904, %4901 ]
  %4894 = and i32 %4893, 1
  %4895 = icmp eq i32 %4894, 0
  br i1 %4895, label %4901, label %4896

4896:                                             ; preds = %4891
  %4897 = load ptr, ptr %2, align 4
  %4898 = load i32, ptr %4889, align 4
  %4899 = add i32 %4898, %4892
  %4900 = load i32, ptr %4884, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4897, i32 noundef %4899, i32 noundef %4900) #11
  br label %4901

4901:                                             ; preds = %4896, %4891
  %4902 = load i32, ptr %4890, align 4
  %4903 = add i32 %4902, %4892
  %4904 = lshr i32 %4893, 1
  %4905 = icmp ult i32 %4893, 2
  br i1 %4905, label %4906, label %4891

4906:                                             ; preds = %4901, %4880, %4858
  %4907 = load i32, ptr %682, align 4
  %4908 = and i32 %4907, 262144
  %4909 = icmp eq i32 %4908, 0
  br i1 %4909, label %4910, label %4919

4910:                                             ; preds = %4906
  %4911 = and i32 %4907, 131072
  %4912 = icmp eq i32 %4911, 0
  %4913 = select i1 %4912, i32 -2013134848, i32 -1744699392
  %4914 = load i64, ptr %1778, align 4
  %4915 = and i64 %4914, 8
  %4916 = icmp eq i64 %4915, 0
  %4917 = or i32 %4913, 524288
  %4918 = select i1 %4916, i32 %4917, i32 %4913
  br label %4919

4919:                                             ; preds = %4910, %4906
  %4920 = phi i32 [ -1542586368, %4906 ], [ %4918, %4910 ]
  tail call fastcc void @gk104_ram_train(ptr noundef %2, i32 noundef -1139867648, i32 noundef %4920)
  %4921 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %4921, i32 noundef 1000) #11
  %4922 = load i32, ptr %1715, align 8
  %4923 = icmp eq i32 %4922, 2
  br i1 %4923, label %4924, label %4978

4924:                                             ; preds = %4919
  %4925 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46
  %4926 = load i32, ptr %4925, align 4
  %4927 = load i32, ptr %14, align 4
  %4928 = icmp eq i32 %4926, %4927
  br i1 %4928, label %4929, label %4932

4929:                                             ; preds = %4924
  %4930 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  %4931 = load i32, ptr %4930, align 4
  br label %4944

4932:                                             ; preds = %4924
  %4933 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4934 = load ptr, ptr %4933, align 4
  %4935 = getelementptr inbounds %struct.nvkm_fb, ptr %4934, i32 0, i32 1, i32 1
  %4936 = load ptr, ptr %4935, align 4
  %4937 = getelementptr inbounds %struct.nvkm_device, ptr %4936, i32 0, i32 11
  %4938 = load ptr, ptr %4937, align 4
  %4939 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 2
  %4940 = load i32, ptr %4939, align 4
  %4941 = getelementptr i8, ptr %4938, i32 %4940
  %4942 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4941) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4943 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  store i32 %4942, ptr %4943, align 4
  br label %4944

4944:                                             ; preds = %4932, %4929
  %4945 = phi i32 [ %4931, %4929 ], [ %4942, %4932 ]
  %4946 = or i32 %4945, 4
  %4947 = icmp eq i32 %4945, %4946
  br i1 %4947, label %4948, label %4952

4948:                                             ; preds = %4944
  %4949 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 1
  %4950 = load i8, ptr %4949, align 4, !range !15
  %4951 = icmp eq i8 %4950, 0
  br i1 %4951, label %4978, label %4952

4952:                                             ; preds = %4948, %4944
  %4953 = load i32, ptr %14, align 4
  store i32 %4953, ptr %4925, align 4
  %4954 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  store i32 %4946, ptr %4954, align 4
  %4955 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 4
  %4956 = load i32, ptr %4955, align 4
  %4957 = icmp eq i32 %4956, 0
  br i1 %4957, label %4976, label %4958

4958:                                             ; preds = %4952
  %4959 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 2
  %4960 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 3
  br label %4961

4961:                                             ; preds = %4971, %4958
  %4962 = phi i32 [ 0, %4958 ], [ %4973, %4971 ]
  %4963 = phi i32 [ %4956, %4958 ], [ %4974, %4971 ]
  %4964 = and i32 %4963, 1
  %4965 = icmp eq i32 %4964, 0
  br i1 %4965, label %4971, label %4966

4966:                                             ; preds = %4961
  %4967 = load ptr, ptr %2, align 4
  %4968 = load i32, ptr %4959, align 4
  %4969 = add i32 %4968, %4962
  %4970 = load i32, ptr %4954, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %4967, i32 noundef %4969, i32 noundef %4970) #11
  br label %4971

4971:                                             ; preds = %4966, %4961
  %4972 = load i32, ptr %4960, align 4
  %4973 = add i32 %4972, %4962
  %4974 = lshr i32 %4963, 1
  %4975 = icmp ult i32 %4963, 2
  br i1 %4975, label %4976, label %4961

4976:                                             ; preds = %4971, %4952
  %4977 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 46, i32 1
  store i8 0, ptr %4977, align 4
  br label %4978

4978:                                             ; preds = %4976, %4948, %4919
  %4979 = load i32, ptr %4359, align 4
  %4980 = load i32, ptr %4358, align 4
  %4981 = load i32, ptr %14, align 4
  %4982 = icmp eq i32 %4980, %4981
  br i1 %4982, label %4983, label %4986

4983:                                             ; preds = %4978
  %4984 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 5
  %4985 = load i32, ptr %4984, align 4
  br label %4998

4986:                                             ; preds = %4978
  %4987 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4988 = load ptr, ptr %4987, align 4
  %4989 = getelementptr inbounds %struct.nvkm_fb, ptr %4988, i32 0, i32 1, i32 1
  %4990 = load ptr, ptr %4989, align 4
  %4991 = getelementptr inbounds %struct.nvkm_device, ptr %4990, i32 0, i32 11
  %4992 = load ptr, ptr %4991, align 4
  %4993 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 2
  %4994 = load i32, ptr %4993, align 4
  %4995 = getelementptr i8, ptr %4992, i32 %4994
  %4996 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4995) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %4997 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 5
  store i32 %4996, ptr %4997, align 4
  br label %4998

4998:                                             ; preds = %4986, %4983
  %4999 = phi i32 [ %4985, %4983 ], [ %4996, %4986 ]
  %5000 = and i32 %4999, -5
  %5001 = or i32 %5000, %4979
  %5002 = icmp eq i32 %4999, %5001
  br i1 %5002, label %5003, label %5007

5003:                                             ; preds = %4998
  %5004 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 1
  %5005 = load i8, ptr %5004, align 4, !range !15
  %5006 = icmp eq i8 %5005, 0
  br i1 %5006, label %5033, label %5007

5007:                                             ; preds = %5003, %4998
  %5008 = load i32, ptr %14, align 4
  store i32 %5008, ptr %4358, align 4
  %5009 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 5
  store i32 %5001, ptr %5009, align 4
  %5010 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 4
  %5011 = load i32, ptr %5010, align 4
  %5012 = icmp eq i32 %5011, 0
  br i1 %5012, label %5031, label %5013

5013:                                             ; preds = %5007
  %5014 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 2
  %5015 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 3
  br label %5016

5016:                                             ; preds = %5026, %5013
  %5017 = phi i32 [ 0, %5013 ], [ %5028, %5026 ]
  %5018 = phi i32 [ %5011, %5013 ], [ %5029, %5026 ]
  %5019 = and i32 %5018, 1
  %5020 = icmp eq i32 %5019, 0
  br i1 %5020, label %5026, label %5021

5021:                                             ; preds = %5016
  %5022 = load ptr, ptr %2, align 4
  %5023 = load i32, ptr %5014, align 4
  %5024 = add i32 %5023, %5017
  %5025 = load i32, ptr %5009, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %5022, i32 noundef %5024, i32 noundef %5025) #11
  br label %5026

5026:                                             ; preds = %5021, %5016
  %5027 = load i32, ptr %5015, align 4
  %5028 = add i32 %5027, %5017
  %5029 = lshr i32 %5018, 1
  %5030 = icmp ult i32 %5018, 2
  br i1 %5030, label %5031, label %5016

5031:                                             ; preds = %5026, %5007
  %5032 = getelementptr %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 51, i32 5, i32 1
  store i8 0, ptr %5032, align 4
  br label %5033

5033:                                             ; preds = %5031, %5003
  %5034 = load i32, ptr %4359, align 4
  %5035 = icmp eq i32 %4999, %5034
  br i1 %5035, label %5038, label %5036

5036:                                             ; preds = %5033
  %5037 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %5037, i32 noundef 1000) #11
  br label %5038

5038:                                             ; preds = %5036, %5033
  %5039 = load i32, ptr %1715, align 8
  %5040 = icmp eq i32 %5039, 2
  br i1 %5040, label %5147, label %5041

5041:                                             ; preds = %5038
  %5042 = load i32, ptr %2366, align 4
  %5043 = load i32, ptr %14, align 4
  %5044 = icmp eq i32 %5042, %5043
  br i1 %5044, label %5045, label %5048

5045:                                             ; preds = %5041
  %5046 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %5047 = load i32, ptr %5046, align 4
  br label %5060

5048:                                             ; preds = %5041
  %5049 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5050 = load ptr, ptr %5049, align 4
  %5051 = getelementptr inbounds %struct.nvkm_fb, ptr %5050, i32 0, i32 1, i32 1
  %5052 = load ptr, ptr %5051, align 4
  %5053 = getelementptr inbounds %struct.nvkm_device, ptr %5052, i32 0, i32 11
  %5054 = load ptr, ptr %5053, align 4
  %5055 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %5056 = load i32, ptr %5055, align 4
  %5057 = getelementptr i8, ptr %5054, i32 %5056
  %5058 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5057) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %5059 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %5058, ptr %5059, align 4
  br label %5060

5060:                                             ; preds = %5048, %5045
  %5061 = phi i32 [ %5047, %5045 ], [ %5058, %5048 ]
  %5062 = or i32 %5061, 16777216
  %5063 = icmp eq i32 %5061, %5062
  br i1 %5063, label %5064, label %5068

5064:                                             ; preds = %5060
  %5065 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  %5066 = load i8, ptr %5065, align 4, !range !15
  %5067 = icmp eq i8 %5066, 0
  br i1 %5067, label %5094, label %5068

5068:                                             ; preds = %5064, %5060
  %5069 = load i32, ptr %14, align 4
  store i32 %5069, ptr %2366, align 4
  %5070 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %5062, ptr %5070, align 4
  %5071 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %5072 = load i32, ptr %5071, align 4
  %5073 = icmp eq i32 %5072, 0
  br i1 %5073, label %5092, label %5074

5074:                                             ; preds = %5068
  %5075 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %5076 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %5077

5077:                                             ; preds = %5087, %5074
  %5078 = phi i32 [ 0, %5074 ], [ %5089, %5087 ]
  %5079 = phi i32 [ %5072, %5074 ], [ %5090, %5087 ]
  %5080 = and i32 %5079, 1
  %5081 = icmp eq i32 %5080, 0
  br i1 %5081, label %5087, label %5082

5082:                                             ; preds = %5077
  %5083 = load ptr, ptr %2, align 4
  %5084 = load i32, ptr %5075, align 4
  %5085 = add i32 %5084, %5078
  %5086 = load i32, ptr %5070, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %5083, i32 noundef %5085, i32 noundef %5086) #11
  br label %5087

5087:                                             ; preds = %5082, %5077
  %5088 = load i32, ptr %5076, align 4
  %5089 = add i32 %5088, %5078
  %5090 = lshr i32 %5079, 1
  %5091 = icmp ult i32 %5079, 2
  br i1 %5091, label %5092, label %5077

5092:                                             ; preds = %5087, %5068
  %5093 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  store i8 0, ptr %5093, align 4
  br label %5094

5094:                                             ; preds = %5092, %5064
  %5095 = load i32, ptr %2366, align 4
  %5096 = load i32, ptr %14, align 4
  %5097 = icmp eq i32 %5095, %5096
  br i1 %5097, label %5098, label %5101

5098:                                             ; preds = %5094
  %5099 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %5100 = load i32, ptr %5099, align 4
  br label %5113

5101:                                             ; preds = %5094
  %5102 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5103 = load ptr, ptr %5102, align 4
  %5104 = getelementptr inbounds %struct.nvkm_fb, ptr %5103, i32 0, i32 1, i32 1
  %5105 = load ptr, ptr %5104, align 4
  %5106 = getelementptr inbounds %struct.nvkm_device, ptr %5105, i32 0, i32 11
  %5107 = load ptr, ptr %5106, align 4
  %5108 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %5109 = load i32, ptr %5108, align 4
  %5110 = getelementptr i8, ptr %5107, i32 %5109
  %5111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5110) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %5112 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %5111, ptr %5112, align 4
  br label %5113

5113:                                             ; preds = %5101, %5098
  %5114 = phi i32 [ %5100, %5098 ], [ %5111, %5101 ]
  %5115 = and i32 %5114, -16777217
  %5116 = icmp eq i32 %5114, %5115
  br i1 %5116, label %5117, label %5121

5117:                                             ; preds = %5113
  %5118 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  %5119 = load i8, ptr %5118, align 4, !range !15
  %5120 = icmp eq i8 %5119, 0
  br i1 %5120, label %5147, label %5121

5121:                                             ; preds = %5117, %5113
  %5122 = load i32, ptr %14, align 4
  store i32 %5122, ptr %2366, align 4
  %5123 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %5115, ptr %5123, align 4
  %5124 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %5125 = load i32, ptr %5124, align 4
  %5126 = icmp eq i32 %5125, 0
  br i1 %5126, label %5145, label %5127

5127:                                             ; preds = %5121
  %5128 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %5129 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %5130

5130:                                             ; preds = %5140, %5127
  %5131 = phi i32 [ 0, %5127 ], [ %5142, %5140 ]
  %5132 = phi i32 [ %5125, %5127 ], [ %5143, %5140 ]
  %5133 = and i32 %5132, 1
  %5134 = icmp eq i32 %5133, 0
  br i1 %5134, label %5140, label %5135

5135:                                             ; preds = %5130
  %5136 = load ptr, ptr %2, align 4
  %5137 = load i32, ptr %5128, align 4
  %5138 = add i32 %5137, %5131
  %5139 = load i32, ptr %5123, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %5136, i32 noundef %5138, i32 noundef %5139) #11
  br label %5140

5140:                                             ; preds = %5135, %5130
  %5141 = load i32, ptr %5129, align 4
  %5142 = add i32 %5141, %5131
  %5143 = lshr i32 %5132, 1
  %5144 = icmp ult i32 %5132, 2
  br i1 %5144, label %5145, label %5130

5145:                                             ; preds = %5140, %5121
  %5146 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  store i8 0, ptr %5146, align 4
  br label %5147

5147:                                             ; preds = %5145, %5117, %5038
  %5148 = load i32, ptr %682, align 4
  %5149 = and i32 %5148, 65536
  %5150 = icmp eq i32 %5149, 0
  br i1 %5150, label %5152, label %5151

5151:                                             ; preds = %5147
  tail call fastcc void @gk104_ram_train(ptr noundef %2, i32 noundef -2147352576, i32 noundef 16777216)
  br label %5152

5152:                                             ; preds = %5151, %5147
  %5153 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_unblock(ptr noundef %5153) #11
  %5154 = load ptr, ptr %68, align 4
  %5155 = getelementptr inbounds %struct.nvkm_fb, ptr %5154, i32 0, i32 1, i32 1
  %5156 = load ptr, ptr %5155, align 4
  %5157 = getelementptr inbounds %struct.nvkm_device, ptr %5156, i32 0, i32 50
  %5158 = load ptr, ptr %5157, align 8
  %5159 = icmp eq ptr %5158, null
  br i1 %5159, label %5185, label %5160

5160:                                             ; preds = %5152
  %5161 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52
  %5162 = load i32, ptr %14, align 4
  store i32 %5162, ptr %5161, align 4
  %5163 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 5
  store i32 252645120, ptr %5163, align 4
  %5164 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 4
  %5165 = load i32, ptr %5164, align 4
  %5166 = icmp eq i32 %5165, 0
  br i1 %5166, label %5185, label %5167

5167:                                             ; preds = %5160
  %5168 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 2
  %5169 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 52, i32 3
  br label %5170

5170:                                             ; preds = %5180, %5167
  %5171 = phi i32 [ 0, %5167 ], [ %5182, %5180 ]
  %5172 = phi i32 [ %5165, %5167 ], [ %5183, %5180 ]
  %5173 = and i32 %5172, 1
  %5174 = icmp eq i32 %5173, 0
  br i1 %5174, label %5180, label %5175

5175:                                             ; preds = %5170
  %5176 = load ptr, ptr %2, align 4
  %5177 = load i32, ptr %5168, align 4
  %5178 = add i32 %5177, %5171
  %5179 = load i32, ptr %5163, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %5176, i32 noundef %5178, i32 noundef %5179) #11
  br label %5180

5180:                                             ; preds = %5175, %5170
  %5181 = load i32, ptr %5169, align 4
  %5182 = add i32 %5181, %5171
  %5183 = lshr i32 %5172, 1
  %5184 = icmp ult i32 %5172, 2
  br i1 %5184, label %5185, label %5170

5185:                                             ; preds = %5180, %5160, %5152
  %5186 = load i64, ptr %1778, align 4
  %5187 = trunc i64 %5186 to i32
  %5188 = shl i32 %5187, 11
  %5189 = and i32 %5188, 2048
  %5190 = load i32, ptr %300, align 4
  %5191 = load i32, ptr %14, align 4
  %5192 = icmp eq i32 %5190, %5191
  br i1 %5192, label %5193, label %5195

5193:                                             ; preds = %5185
  %5194 = load i32, ptr %4778, align 4
  br label %5205

5195:                                             ; preds = %5185
  %5196 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5197 = load ptr, ptr %5196, align 4
  %5198 = getelementptr inbounds %struct.nvkm_fb, ptr %5197, i32 0, i32 1, i32 1
  %5199 = load ptr, ptr %5198, align 4
  %5200 = getelementptr inbounds %struct.nvkm_device, ptr %5199, i32 0, i32 11
  %5201 = load ptr, ptr %5200, align 4
  %5202 = load i32, ptr %4774, align 4
  %5203 = getelementptr i8, ptr %5201, i32 %5202
  %5204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5203) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  store i32 %5204, ptr %4778, align 4
  br label %5205

5205:                                             ; preds = %5195, %5193
  %5206 = phi i32 [ %5194, %5193 ], [ %5204, %5195 ]
  %5207 = and i32 %5206, -2049
  %5208 = or i32 %5207, %5189
  %5209 = icmp eq i32 %5206, %5208
  br i1 %5209, label %5210, label %5214

5210:                                             ; preds = %5205
  %5211 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  %5212 = load i8, ptr %5211, align 4, !range !15
  %5213 = icmp eq i8 %5212, 0
  br i1 %5213, label %5241, label %5214

5214:                                             ; preds = %5210, %5205
  %5215 = load i32, ptr %14, align 4
  store i32 %5215, ptr %300, align 4
  store i32 %5208, ptr %4778, align 4
  %5216 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 4
  %5217 = load i32, ptr %5216, align 4
  %5218 = icmp eq i32 %5217, 0
  br i1 %5218, label %5238, label %5219

5219:                                             ; preds = %5214
  %5220 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 3
  br label %5221

5221:                                             ; preds = %5231, %5219
  %5222 = phi i32 [ 0, %5219 ], [ %5233, %5231 ]
  %5223 = phi i32 [ %5217, %5219 ], [ %5234, %5231 ]
  %5224 = and i32 %5223, 1
  %5225 = icmp eq i32 %5224, 0
  br i1 %5225, label %5231, label %5226

5226:                                             ; preds = %5221
  %5227 = load ptr, ptr %2, align 4
  %5228 = load i32, ptr %4774, align 4
  %5229 = add i32 %5228, %5222
  %5230 = load i32, ptr %4778, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %5227, i32 noundef %5229, i32 noundef %5230) #11
  br label %5231

5231:                                             ; preds = %5226, %5221
  %5232 = load i32, ptr %5220, align 4
  %5233 = add i32 %5232, %5222
  %5234 = lshr i32 %5223, 1
  %5235 = icmp ult i32 %5223, 2
  br i1 %5235, label %5236, label %5221

5236:                                             ; preds = %5231
  %5237 = load i32, ptr %4778, align 4
  br label %5238

5238:                                             ; preds = %5236, %5214
  %5239 = phi i32 [ %5237, %5236 ], [ %5208, %5214 ]
  %5240 = getelementptr inbounds %struct.gk104_ram, ptr %0, i32 0, i32 1, i32 53, i32 1
  store i8 0, ptr %5240, align 4
  br label %5241

5241:                                             ; preds = %5238, %5210
  %5242 = phi i32 [ %5206, %5210 ], [ %5239, %5238 ]
  %5243 = load ptr, ptr %68, align 4
  %5244 = getelementptr inbounds %struct.nvkm_fb, ptr %5243, i32 0, i32 1, i32 1
  %5245 = load ptr, ptr %5244, align 4
  %5246 = load i32, ptr %4774, align 4
  %5247 = and i32 %5246, 4095
  %5248 = or i32 %5247, 1114112
  %5249 = and i32 %5242, 411076608
  %5250 = or i32 %5249, %5189
  %5251 = getelementptr inbounds %struct.nvkm_device, ptr %5245, i32 0, i32 11
  br label %5252

5252:                                             ; preds = %5266, %5241
  %5253 = phi i32 [ 0, %5241 ], [ %5267, %5266 ]
  %5254 = phi i32 [ %5248, %5241 ], [ %5268, %5266 ]
  %5255 = load i32, ptr %4781, align 4
  %5256 = shl nuw nsw i32 1, %5253
  %5257 = and i32 %5255, %5256
  %5258 = icmp eq i32 %5257, 0
  br i1 %5258, label %5266, label %5259

5259:                                             ; preds = %5252
  %5260 = load ptr, ptr %5251, align 4
  %5261 = getelementptr i8, ptr %5260, i32 %5254
  %5262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5261) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %5263 = and i32 %5262, -411076609
  %5264 = or i32 %5250, %5263
  %5265 = load ptr, ptr %2, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %5265, i32 noundef %5254, i32 noundef %5264) #11
  br label %5266

5266:                                             ; preds = %5259, %5252
  %5267 = add nuw nsw i32 %5253, 1
  %5268 = add nuw nsw i32 %5254, 4096
  %5269 = icmp eq i32 %5267, 16
  br i1 %5269, label %5270, label %5252

5270:                                             ; preds = %5266
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_sddr3_dll_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51
  %3 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 1
  store i8 1, ptr %3, align 4
  %4 = load i32, ptr %2, align 4
  %5 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  br label %23

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_fb, ptr %13, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %22 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 5
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %11, %8
  %24 = phi i32 [ %10, %8 ], [ %21, %11 ]
  %25 = or i32 %24, 256
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8, ptr %3, align 4, !range !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %27, %23
  %31 = load i32, ptr %5, align 4
  store i32 %31, ptr %2, align 4
  %32 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 5
  store i32 %25, ptr %32, align 4
  %33 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 2
  %38 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 3
  br label %39

39:                                               ; preds = %49, %36
  %40 = phi i32 [ 0, %36 ], [ %51, %49 ]
  %41 = phi i32 [ %34, %36 ], [ %52, %49 ]
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %0, align 4
  %46 = load i32, ptr %37, align 4
  %47 = add i32 %46, %40
  %48 = load i32, ptr %32, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %45, i32 noundef %47, i32 noundef %48) #11
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, ptr %38, align 4
  %51 = add i32 %50, %40
  %52 = lshr i32 %41, 1
  %53 = icmp ult i32 %41, 2
  br i1 %53, label %54, label %39

54:                                               ; preds = %49, %30
  store i8 0, ptr %3, align 4
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i32, ptr %2, align 4
  %57 = load i32, ptr %5, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  br label %74

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_fb, ptr %64, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 11
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %73 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 5
  store i32 %72, ptr %73, align 4
  br label %74

74:                                               ; preds = %62, %59
  %75 = phi i32 [ %61, %59 ], [ %72, %62 ]
  %76 = and i32 %75, -257
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8, ptr %3, align 4, !range !15
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %106, label %81

81:                                               ; preds = %78, %74
  %82 = load i32, ptr %5, align 4
  store i32 %82, ptr %2, align 4
  %83 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 5
  store i32 %76, ptr %83, align 4
  %84 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 2
  %89 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 51, i32 0, i32 3
  br label %90

90:                                               ; preds = %100, %87
  %91 = phi i32 [ 0, %87 ], [ %102, %100 ]
  %92 = phi i32 [ %85, %87 ], [ %103, %100 ]
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %0, align 4
  %97 = load i32, ptr %88, align 4
  %98 = add i32 %97, %91
  %99 = load i32, ptr %83, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %96, i32 noundef %98, i32 noundef %99) #11
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, ptr %89, align 4
  %102 = add i32 %101, %91
  %103 = lshr i32 %92, 1
  %104 = icmp ult i32 %92, 2
  br i1 %104, label %105, label %90

105:                                              ; preds = %100, %81
  store i8 0, ptr %3, align 4
  br label %106

106:                                              ; preds = %105, %78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_nsec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_unblock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gk104_ram_train(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 49
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 49, i32 5
  %11 = load i32, ptr %10, align 4
  br label %24

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_fb, ptr %14, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 49, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %23 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 49, i32 5
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %12, %9
  %25 = phi i32 [ %11, %9 ], [ %22, %12 ]
  %26 = xor i32 %1, -1
  %27 = and i32 %25, %26
  %28 = or i32 %27, %2
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 49, i32 1
  %32 = load i8, ptr %31, align 4, !range !15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %30, %24
  %35 = load i32, ptr %6, align 4
  store i32 %35, ptr %4, align 4
  %36 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 49, i32 5
  store i32 %28, ptr %36, align 4
  %37 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 49, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 49, i32 2
  %42 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 49, i32 3
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
  tail call void @nvkm_memx_wr32(ptr noundef %49, i32 noundef %51, i32 noundef %52) #11
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, ptr %42, align 4
  %55 = add i32 %54, %44
  %56 = lshr i32 %45, 1
  %57 = icmp ult i32 %45, 2
  br i1 %57, label %58, label %43

58:                                               ; preds = %53, %34
  %59 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 49, i32 1
  store i8 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %30
  %61 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 50
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %6, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 50, i32 5
  %67 = load i32, ptr %66, align 4
  br label %80

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvkm_fb, ptr %70, i32 0, i32 1, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 11
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 50, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i8, ptr %74, i32 %76
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %79 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 50, i32 5
  store i32 %78, ptr %79, align 4
  br label %80

80:                                               ; preds = %68, %65
  %81 = phi i32 [ %67, %65 ], [ %78, %68 ]
  %82 = and i32 %81, %26
  %83 = or i32 %82, %2
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 50, i32 1
  %87 = load i8, ptr %86, align 4, !range !15
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %115, label %89

89:                                               ; preds = %85, %80
  %90 = load i32, ptr %6, align 4
  store i32 %90, ptr %61, align 4
  %91 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 50, i32 5
  store i32 %83, ptr %91, align 4
  %92 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 50, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 50, i32 2
  %97 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 50, i32 3
  br label %98

98:                                               ; preds = %108, %95
  %99 = phi i32 [ 0, %95 ], [ %110, %108 ]
  %100 = phi i32 [ %93, %95 ], [ %111, %108 ]
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr %0, align 4
  %105 = load i32, ptr %96, align 4
  %106 = add i32 %105, %99
  %107 = load i32, ptr %91, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %104, i32 noundef %106, i32 noundef %107) #11
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i32, ptr %97, align 4
  %110 = add i32 %109, %99
  %111 = lshr i32 %100, 1
  %112 = icmp ult i32 %100, 2
  br i1 %112, label %113, label %98

113:                                              ; preds = %108, %89
  %114 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 50, i32 1
  store i8 0, ptr %114, align 4
  br label %115

115:                                              ; preds = %113, %85
  %116 = getelementptr i8, ptr %0, i32 2020
  %117 = icmp sgt i32 %2, -1
  br i1 %117, label %136, label %118

118:                                              ; preds = %115
  %119 = getelementptr i8, ptr %0, i32 2024
  %120 = load i32, ptr %116, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %131, %118
  %123 = phi i32 [ %132, %131 ], [ 1116532, %118 ]
  %124 = phi i32 [ %133, %131 ], [ 0, %118 ]
  %125 = load i32, ptr %119, align 8
  %126 = shl nuw i32 1, %124
  %127 = and i32 %125, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load ptr, ptr %0, align 4
  tail call void @nvkm_memx_wait(ptr noundef %130, i32 noundef %123, i32 noundef 15, i32 noundef 0, i32 noundef 500000) #11
  br label %131

131:                                              ; preds = %129, %122
  %132 = add i32 %123, 4096
  %133 = add nuw i32 %124, 1
  %134 = load i32, ptr %116, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %122, label %136

136:                                              ; preds = %131, %118, %115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @r1373f4_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 2196
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 4
  %5 = shl i32 %4, 28
  %6 = getelementptr i8, ptr %0, i32 2188
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 8
  %9 = or i32 %8, %5
  %10 = getelementptr i8, ptr %0, i32 2192
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %9, %11
  %13 = getelementptr i8, ptr %0, i32 2184
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %14, 16
  %16 = getelementptr i8, ptr %0, i32 2172
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %18, %15
  %20 = getelementptr i8, ptr %0, i32 2180
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %19, %21
  %23 = getelementptr i8, ptr %0, i32 2176
  %24 = load i32, ptr %23, align 8
  %25 = shl i32 %24, 16
  %26 = getelementptr i8, ptr %0, i32 2164
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 2
  %29 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %28, label %34, label %135

34:                                               ; preds = %1
  br i1 %33, label %35, label %38

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %37 = load i32, ptr %36, align 4
  br label %50

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_fb, ptr %40, i32 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %44, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %49 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %38, %35
  %51 = phi i32 [ %37, %35 ], [ %48, %38 ]
  %52 = or i32 %51, 4352
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %56 = load i8, ptr %55, align 4, !range !15
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %84, label %58

58:                                               ; preds = %54, %50
  %59 = load i32, ptr %31, align 4
  store i32 %59, ptr %29, align 4
  %60 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %52, ptr %60, align 4
  %61 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %66 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %67

67:                                               ; preds = %77, %64
  %68 = phi i32 [ 0, %64 ], [ %79, %77 ]
  %69 = phi i32 [ %62, %64 ], [ %80, %77 ]
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %0, align 4
  %74 = load i32, ptr %65, align 4
  %75 = add i32 %74, %68
  %76 = load i32, ptr %60, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %73, i32 noundef %75, i32 noundef %76) #11
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, ptr %66, align 4
  %79 = add i32 %78, %68
  %80 = lshr i32 %69, 1
  %81 = icmp ult i32 %69, 2
  br i1 %81, label %82, label %67

82:                                               ; preds = %77, %58
  %83 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  store i8 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %54
  %85 = load i32, ptr %29, align 4
  %86 = load i32, ptr %31, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %90 = load i32, ptr %89, align 4
  br label %103

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nvkm_fb, ptr %93, i32 0, i32 1, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 11
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr i8, ptr %97, i32 %99
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %102 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %101, ptr %102, align 4
  br label %103

103:                                              ; preds = %91, %88
  %104 = phi i32 [ %90, %88 ], [ %101, %91 ]
  %105 = or i32 %104, 16
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %109 = load i8, ptr %108, align 4, !range !15
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %185, label %111

111:                                              ; preds = %107, %103
  %112 = load i32, ptr %31, align 4
  store i32 %112, ptr %29, align 4
  %113 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %105, ptr %113, align 4
  %114 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %183, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %119 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %120

120:                                              ; preds = %130, %117
  %121 = phi i32 [ 0, %117 ], [ %132, %130 ]
  %122 = phi i32 [ %115, %117 ], [ %133, %130 ]
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load ptr, ptr %0, align 4
  %127 = load i32, ptr %118, align 4
  %128 = add i32 %127, %121
  %129 = load i32, ptr %113, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %126, i32 noundef %128, i32 noundef %129) #11
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, ptr %119, align 4
  %132 = add i32 %131, %121
  %133 = lshr i32 %122, 1
  %134 = icmp ult i32 %122, 2
  br i1 %134, label %183, label %120

135:                                              ; preds = %1
  br i1 %33, label %136, label %139

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %138 = load i32, ptr %137, align 4
  br label %151

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.nvkm_fb, ptr %141, i32 0, i32 1, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.nvkm_device, ptr %143, i32 0, i32 11
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr i8, ptr %145, i32 %147
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %150 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %149, ptr %150, align 4
  br label %151

151:                                              ; preds = %139, %136
  %152 = phi i32 [ %138, %136 ], [ %149, %139 ]
  %153 = or i32 %152, 65552
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %157 = load i8, ptr %156, align 4, !range !15
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %185, label %159

159:                                              ; preds = %155, %151
  %160 = load i32, ptr %31, align 4
  store i32 %160, ptr %29, align 4
  %161 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %153, ptr %161, align 4
  %162 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %183, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %167 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %168

168:                                              ; preds = %178, %165
  %169 = phi i32 [ 0, %165 ], [ %180, %178 ]
  %170 = phi i32 [ %163, %165 ], [ %181, %178 ]
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load ptr, ptr %0, align 4
  %175 = load i32, ptr %166, align 4
  %176 = add i32 %175, %169
  %177 = load i32, ptr %161, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %174, i32 noundef %176, i32 noundef %177) #11
  br label %178

178:                                              ; preds = %173, %168
  %179 = load i32, ptr %167, align 4
  %180 = add i32 %179, %169
  %181 = lshr i32 %170, 1
  %182 = icmp ult i32 %170, 2
  br i1 %182, label %183, label %168

183:                                              ; preds = %178, %159, %130, %111
  %184 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  store i8 0, ptr %184, align 4
  br label %185

185:                                              ; preds = %183, %155, %107
  %186 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %193 = load i32, ptr %192, align 4
  br label %206

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.nvkm_fb, ptr %196, i32 0, i32 1, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.nvkm_device, ptr %198, i32 0, i32 11
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr i8, ptr %200, i32 %202
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %205 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %204, ptr %205, align 4
  br label %206

206:                                              ; preds = %194, %191
  %207 = phi i32 [ %193, %191 ], [ %204, %194 ]
  %208 = and i32 %207, -4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %212 = load i8, ptr %211, align 4, !range !15
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %240, label %214

214:                                              ; preds = %210, %206
  %215 = load i32, ptr %188, align 4
  store i32 %215, ptr %186, align 4
  %216 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %208, ptr %216, align 4
  %217 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %238, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %222 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %223

223:                                              ; preds = %233, %220
  %224 = phi i32 [ 0, %220 ], [ %235, %233 ]
  %225 = phi i32 [ %218, %220 ], [ %236, %233 ]
  %226 = and i32 %225, 1
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %223
  %229 = load ptr, ptr %0, align 4
  %230 = load i32, ptr %221, align 4
  %231 = add i32 %230, %224
  %232 = load i32, ptr %216, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %229, i32 noundef %231, i32 noundef %232) #11
  br label %233

233:                                              ; preds = %228, %223
  %234 = load i32, ptr %222, align 4
  %235 = add i32 %234, %224
  %236 = lshr i32 %225, 1
  %237 = icmp ult i32 %225, 2
  br i1 %237, label %238, label %223

238:                                              ; preds = %233, %214
  %239 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  store i8 0, ptr %239, align 4
  br label %240

240:                                              ; preds = %238, %210
  %241 = load i32, ptr %186, align 4
  %242 = load i32, ptr %188, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %246 = load i32, ptr %245, align 4
  br label %259

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.nvkm_fb, ptr %249, i32 0, i32 1, i32 1
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.nvkm_device, ptr %251, i32 0, i32 11
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %255 = load i32, ptr %254, align 4
  %256 = getelementptr i8, ptr %253, i32 %255
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %258 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %257, ptr %258, align 4
  br label %259

259:                                              ; preds = %247, %244
  %260 = phi i32 [ %246, %244 ], [ %257, %247 ]
  %261 = and i32 %260, -17
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %265 = load i8, ptr %264, align 4, !range !15
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %293, label %267

267:                                              ; preds = %263, %259
  %268 = load i32, ptr %188, align 4
  store i32 %268, ptr %186, align 4
  %269 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %261, ptr %269, align 4
  %270 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %271 = load i32, ptr %270, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %291, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %275 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %276

276:                                              ; preds = %286, %273
  %277 = phi i32 [ 0, %273 ], [ %288, %286 ]
  %278 = phi i32 [ %271, %273 ], [ %289, %286 ]
  %279 = and i32 %278, 1
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %276
  %282 = load ptr, ptr %0, align 4
  %283 = load i32, ptr %274, align 4
  %284 = add i32 %283, %277
  %285 = load i32, ptr %269, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %282, i32 noundef %284, i32 noundef %285) #11
  br label %286

286:                                              ; preds = %281, %276
  %287 = load i32, ptr %275, align 4
  %288 = add i32 %287, %277
  %289 = lshr i32 %278, 1
  %290 = icmp ult i32 %278, 2
  br i1 %290, label %291, label %276

291:                                              ; preds = %286, %267
  %292 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  store i8 0, ptr %292, align 4
  br label %293

293:                                              ; preds = %291, %263
  %294 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 10
  %295 = load i32, ptr %294, align 4
  %296 = load i32, ptr %188, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 10, i32 5
  %300 = load i32, ptr %299, align 4
  br label %313

301:                                              ; preds = %293
  %302 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr inbounds %struct.nvkm_fb, ptr %303, i32 0, i32 1, i32 1
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.nvkm_device, ptr %305, i32 0, i32 11
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 10, i32 2
  %309 = load i32, ptr %308, align 4
  %310 = getelementptr i8, ptr %307, i32 %309
  %311 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %312 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 10, i32 5
  store i32 %311, ptr %312, align 4
  br label %313

313:                                              ; preds = %301, %298
  %314 = phi i32 [ %300, %298 ], [ %311, %301 ]
  %315 = icmp eq i32 %314, %22
  br i1 %315, label %316, label %340

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12
  %318 = load i32, ptr %317, align 4
  %319 = load i32, ptr %188, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 5
  %323 = load i32, ptr %322, align 4
  br label %336

324:                                              ; preds = %316
  %325 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr inbounds %struct.nvkm_fb, ptr %326, i32 0, i32 1, i32 1
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.nvkm_device, ptr %328, i32 0, i32 11
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 2
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr i8, ptr %330, i32 %332
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %333) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %335 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 5
  store i32 %334, ptr %335, align 4
  br label %336

336:                                              ; preds = %324, %321
  %337 = phi i32 [ %323, %321 ], [ %334, %324 ]
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, %24
  br i1 %339, label %772, label %340

340:                                              ; preds = %336, %313
  %341 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13
  %342 = load i32, ptr %341, align 4
  %343 = load i32, ptr %188, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  %347 = load i32, ptr %346, align 4
  br label %360

348:                                              ; preds = %340
  %349 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.nvkm_fb, ptr %350, i32 0, i32 1, i32 1
  %352 = load ptr, ptr %351, align 4
  %353 = getelementptr inbounds %struct.nvkm_device, ptr %352, i32 0, i32 11
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 2
  %356 = load i32, ptr %355, align 4
  %357 = getelementptr i8, ptr %354, i32 %356
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %357) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %359 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  store i32 %358, ptr %359, align 4
  br label %360

360:                                              ; preds = %348, %345
  %361 = phi i32 [ %347, %345 ], [ %358, %348 ]
  %362 = and i32 %361, -2
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 1
  %366 = load i8, ptr %365, align 4, !range !15
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %394, label %368

368:                                              ; preds = %364, %360
  %369 = load i32, ptr %188, align 4
  store i32 %369, ptr %341, align 4
  %370 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  store i32 %362, ptr %370, align 4
  %371 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 4
  %372 = load i32, ptr %371, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %392, label %374

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 2
  %376 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 3
  br label %377

377:                                              ; preds = %387, %374
  %378 = phi i32 [ 0, %374 ], [ %389, %387 ]
  %379 = phi i32 [ %372, %374 ], [ %390, %387 ]
  %380 = and i32 %379, 1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %377
  %383 = load ptr, ptr %0, align 4
  %384 = load i32, ptr %375, align 4
  %385 = add i32 %384, %378
  %386 = load i32, ptr %370, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %383, i32 noundef %385, i32 noundef %386) #11
  br label %387

387:                                              ; preds = %382, %377
  %388 = load i32, ptr %376, align 4
  %389 = add i32 %388, %378
  %390 = lshr i32 %379, 1
  %391 = icmp ult i32 %379, 2
  br i1 %391, label %392, label %377

392:                                              ; preds = %387, %368
  %393 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 1
  store i8 0, ptr %393, align 4
  br label %394

394:                                              ; preds = %392, %364
  %395 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8
  %396 = load i32, ptr %395, align 4
  %397 = load i32, ptr %188, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %402

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 5
  %401 = load i32, ptr %400, align 4
  br label %414

402:                                              ; preds = %394
  %403 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %404 = load ptr, ptr %403, align 4
  %405 = getelementptr inbounds %struct.nvkm_fb, ptr %404, i32 0, i32 1, i32 1
  %406 = load ptr, ptr %405, align 4
  %407 = getelementptr inbounds %struct.nvkm_device, ptr %406, i32 0, i32 11
  %408 = load ptr, ptr %407, align 4
  %409 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 2
  %410 = load i32, ptr %409, align 4
  %411 = getelementptr i8, ptr %408, i32 %410
  %412 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %411) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %413 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 5
  store i32 %412, ptr %413, align 4
  br label %414

414:                                              ; preds = %402, %399
  %415 = phi i32 [ %401, %399 ], [ %412, %402 ]
  %416 = and i32 %415, -2
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %422

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 1
  %420 = load i8, ptr %419, align 4, !range !15
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %448, label %422

422:                                              ; preds = %418, %414
  %423 = load i32, ptr %188, align 4
  store i32 %423, ptr %395, align 4
  %424 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 5
  store i32 %416, ptr %424, align 4
  %425 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 4
  %426 = load i32, ptr %425, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %446, label %428

428:                                              ; preds = %422
  %429 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 2
  %430 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 3
  br label %431

431:                                              ; preds = %441, %428
  %432 = phi i32 [ 0, %428 ], [ %443, %441 ]
  %433 = phi i32 [ %426, %428 ], [ %444, %441 ]
  %434 = and i32 %433, 1
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %441, label %436

436:                                              ; preds = %431
  %437 = load ptr, ptr %0, align 4
  %438 = load i32, ptr %429, align 4
  %439 = add i32 %438, %432
  %440 = load i32, ptr %424, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %437, i32 noundef %439, i32 noundef %440) #11
  br label %441

441:                                              ; preds = %436, %431
  %442 = load i32, ptr %430, align 4
  %443 = add i32 %442, %432
  %444 = lshr i32 %433, 1
  %445 = icmp ult i32 %433, 2
  br i1 %445, label %446, label %431

446:                                              ; preds = %441, %422
  %447 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 1
  store i8 0, ptr %447, align 4
  br label %448

448:                                              ; preds = %446, %418
  %449 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 63
  %450 = load i32, ptr %188, align 4
  store i32 %450, ptr %449, align 4
  %451 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 63, i32 5
  store i32 0, ptr %451, align 4
  %452 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 63, i32 4
  %453 = load i32, ptr %452, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %475, label %455

455:                                              ; preds = %448
  %456 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 63, i32 2
  %457 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 63, i32 3
  br label %458

458:                                              ; preds = %468, %455
  %459 = phi i32 [ 0, %455 ], [ %470, %468 ]
  %460 = phi i32 [ %453, %455 ], [ %471, %468 ]
  %461 = and i32 %460, 1
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %468, label %463

463:                                              ; preds = %458
  %464 = load ptr, ptr %0, align 4
  %465 = load i32, ptr %456, align 4
  %466 = add i32 %465, %459
  %467 = load i32, ptr %451, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %464, i32 noundef %466, i32 noundef %467) #11
  br label %468

468:                                              ; preds = %463, %458
  %469 = load i32, ptr %457, align 4
  %470 = add i32 %469, %459
  %471 = lshr i32 %460, 1
  %472 = icmp ult i32 %460, 2
  br i1 %472, label %473, label %458

473:                                              ; preds = %468
  %474 = load i32, ptr %188, align 4
  br label %475

475:                                              ; preds = %473, %448
  %476 = phi i32 [ %474, %473 ], [ %450, %448 ]
  %477 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 11
  %478 = load i32, ptr %477, align 4
  %479 = icmp eq i32 %478, %476
  br i1 %479, label %480, label %483

480:                                              ; preds = %475
  %481 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 11, i32 5
  %482 = load i32, ptr %481, align 4
  br label %495

483:                                              ; preds = %475
  %484 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %485 = load ptr, ptr %484, align 4
  %486 = getelementptr inbounds %struct.nvkm_fb, ptr %485, i32 0, i32 1, i32 1
  %487 = load ptr, ptr %486, align 4
  %488 = getelementptr inbounds %struct.nvkm_device, ptr %487, i32 0, i32 11
  %489 = load ptr, ptr %488, align 4
  %490 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 11, i32 2
  %491 = load i32, ptr %490, align 4
  %492 = getelementptr i8, ptr %489, i32 %491
  %493 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %492) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %494 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 11, i32 5
  store i32 %493, ptr %494, align 4
  br label %495

495:                                              ; preds = %483, %480
  %496 = phi i32 [ %482, %480 ], [ %493, %483 ]
  %497 = and i32 %496, 65535
  %498 = or i32 %497, %25
  %499 = icmp eq i32 %496, %498
  br i1 %499, label %500, label %504

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 11, i32 1
  %502 = load i8, ptr %501, align 4, !range !15
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %530, label %504

504:                                              ; preds = %500, %495
  %505 = load i32, ptr %188, align 4
  store i32 %505, ptr %477, align 4
  %506 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 11, i32 5
  store i32 %498, ptr %506, align 4
  %507 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 11, i32 4
  %508 = load i32, ptr %507, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %528, label %510

510:                                              ; preds = %504
  %511 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 11, i32 2
  %512 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 11, i32 3
  br label %513

513:                                              ; preds = %523, %510
  %514 = phi i32 [ 0, %510 ], [ %525, %523 ]
  %515 = phi i32 [ %508, %510 ], [ %526, %523 ]
  %516 = and i32 %515, 1
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %523, label %518

518:                                              ; preds = %513
  %519 = load ptr, ptr %0, align 4
  %520 = load i32, ptr %511, align 4
  %521 = add i32 %520, %514
  %522 = load i32, ptr %506, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %519, i32 noundef %521, i32 noundef %522) #11
  br label %523

523:                                              ; preds = %518, %513
  %524 = load i32, ptr %512, align 4
  %525 = add i32 %524, %514
  %526 = lshr i32 %515, 1
  %527 = icmp ult i32 %515, 2
  br i1 %527, label %528, label %513

528:                                              ; preds = %523, %504
  %529 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 11, i32 1
  store i8 0, ptr %529, align 4
  br label %530

530:                                              ; preds = %528, %500
  %531 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12
  %532 = load i32, ptr %531, align 4
  %533 = load i32, ptr %188, align 4
  %534 = icmp eq i32 %532, %533
  br i1 %534, label %535, label %538

535:                                              ; preds = %530
  %536 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 5
  %537 = load i32, ptr %536, align 4
  br label %550

538:                                              ; preds = %530
  %539 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %540 = load ptr, ptr %539, align 4
  %541 = getelementptr inbounds %struct.nvkm_fb, ptr %540, i32 0, i32 1, i32 1
  %542 = load ptr, ptr %541, align 4
  %543 = getelementptr inbounds %struct.nvkm_device, ptr %542, i32 0, i32 11
  %544 = load ptr, ptr %543, align 4
  %545 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 2
  %546 = load i32, ptr %545, align 4
  %547 = getelementptr i8, ptr %544, i32 %546
  %548 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %547) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %549 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 5
  store i32 %548, ptr %549, align 4
  br label %550

550:                                              ; preds = %538, %535
  %551 = phi i32 [ %537, %535 ], [ %548, %538 ]
  %552 = and i32 %551, -65536
  %553 = or i32 %552, %24
  %554 = icmp eq i32 %551, %553
  br i1 %554, label %555, label %559

555:                                              ; preds = %550
  %556 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 1
  %557 = load i8, ptr %556, align 4, !range !15
  %558 = icmp eq i8 %557, 0
  br i1 %558, label %585, label %559

559:                                              ; preds = %555, %550
  %560 = load i32, ptr %188, align 4
  store i32 %560, ptr %531, align 4
  %561 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 5
  store i32 %553, ptr %561, align 4
  %562 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 4
  %563 = load i32, ptr %562, align 4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %583, label %565

565:                                              ; preds = %559
  %566 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 2
  %567 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 3
  br label %568

568:                                              ; preds = %578, %565
  %569 = phi i32 [ 0, %565 ], [ %580, %578 ]
  %570 = phi i32 [ %563, %565 ], [ %581, %578 ]
  %571 = and i32 %570, 1
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %578, label %573

573:                                              ; preds = %568
  %574 = load ptr, ptr %0, align 4
  %575 = load i32, ptr %566, align 4
  %576 = add i32 %575, %569
  %577 = load i32, ptr %561, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %574, i32 noundef %576, i32 noundef %577) #11
  br label %578

578:                                              ; preds = %573, %568
  %579 = load i32, ptr %567, align 4
  %580 = add i32 %579, %569
  %581 = lshr i32 %570, 1
  %582 = icmp ult i32 %570, 2
  br i1 %582, label %583, label %568

583:                                              ; preds = %578, %559
  %584 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 12, i32 1
  store i8 0, ptr %584, align 4
  br label %585

585:                                              ; preds = %583, %555
  %586 = load i32, ptr %188, align 4
  store i32 %586, ptr %294, align 4
  %587 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 10, i32 5
  store i32 %22, ptr %587, align 4
  %588 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 10, i32 4
  %589 = load i32, ptr %588, align 4
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %611, label %591

591:                                              ; preds = %585
  %592 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 10, i32 2
  %593 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 10, i32 3
  br label %594

594:                                              ; preds = %604, %591
  %595 = phi i32 [ 0, %591 ], [ %606, %604 ]
  %596 = phi i32 [ %589, %591 ], [ %607, %604 ]
  %597 = and i32 %596, 1
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %604, label %599

599:                                              ; preds = %594
  %600 = load ptr, ptr %0, align 4
  %601 = load i32, ptr %592, align 4
  %602 = add i32 %601, %595
  %603 = load i32, ptr %587, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %600, i32 noundef %602, i32 noundef %603) #11
  br label %604

604:                                              ; preds = %599, %594
  %605 = load i32, ptr %593, align 4
  %606 = add i32 %605, %595
  %607 = lshr i32 %596, 1
  %608 = icmp ult i32 %596, 2
  br i1 %608, label %609, label %594

609:                                              ; preds = %604
  %610 = load i32, ptr %188, align 4
  br label %611

611:                                              ; preds = %609, %585
  %612 = phi i32 [ %610, %609 ], [ %586, %585 ]
  %613 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9
  %614 = load i32, ptr %613, align 4
  %615 = icmp eq i32 %614, %612
  br i1 %615, label %616, label %619

616:                                              ; preds = %611
  %617 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 5
  %618 = load i32, ptr %617, align 4
  br label %631

619:                                              ; preds = %611
  %620 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %621 = load ptr, ptr %620, align 4
  %622 = getelementptr inbounds %struct.nvkm_fb, ptr %621, i32 0, i32 1, i32 1
  %623 = load ptr, ptr %622, align 4
  %624 = getelementptr inbounds %struct.nvkm_device, ptr %623, i32 0, i32 11
  %625 = load ptr, ptr %624, align 4
  %626 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 2
  %627 = load i32, ptr %626, align 4
  %628 = getelementptr i8, ptr %625, i32 %627
  %629 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %628) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %630 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 5
  store i32 %629, ptr %630, align 4
  br label %631

631:                                              ; preds = %619, %616
  %632 = phi i32 [ %618, %616 ], [ %629, %619 ]
  %633 = or i32 %632, 524288
  %634 = icmp eq i32 %632, %633
  br i1 %634, label %635, label %639

635:                                              ; preds = %631
  %636 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 1
  %637 = load i8, ptr %636, align 4, !range !15
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %665, label %639

639:                                              ; preds = %635, %631
  %640 = load i32, ptr %188, align 4
  store i32 %640, ptr %613, align 4
  %641 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 5
  store i32 %633, ptr %641, align 4
  %642 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 4
  %643 = load i32, ptr %642, align 4
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %663, label %645

645:                                              ; preds = %639
  %646 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 2
  %647 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 3
  br label %648

648:                                              ; preds = %658, %645
  %649 = phi i32 [ 0, %645 ], [ %660, %658 ]
  %650 = phi i32 [ %643, %645 ], [ %661, %658 ]
  %651 = and i32 %650, 1
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %658, label %653

653:                                              ; preds = %648
  %654 = load ptr, ptr %0, align 4
  %655 = load i32, ptr %646, align 4
  %656 = add i32 %655, %649
  %657 = load i32, ptr %641, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %654, i32 noundef %656, i32 noundef %657) #11
  br label %658

658:                                              ; preds = %653, %648
  %659 = load i32, ptr %647, align 4
  %660 = add i32 %659, %649
  %661 = lshr i32 %650, 1
  %662 = icmp ult i32 %650, 2
  br i1 %662, label %663, label %648

663:                                              ; preds = %658, %639
  %664 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 1
  store i8 0, ptr %664, align 4
  br label %665

665:                                              ; preds = %663, %635
  %666 = load i32, ptr %395, align 4
  %667 = load i32, ptr %188, align 4
  %668 = icmp eq i32 %666, %667
  br i1 %668, label %669, label %672

669:                                              ; preds = %665
  %670 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 5
  %671 = load i32, ptr %670, align 4
  br label %684

672:                                              ; preds = %665
  %673 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %674 = load ptr, ptr %673, align 4
  %675 = getelementptr inbounds %struct.nvkm_fb, ptr %674, i32 0, i32 1, i32 1
  %676 = load ptr, ptr %675, align 4
  %677 = getelementptr inbounds %struct.nvkm_device, ptr %676, i32 0, i32 11
  %678 = load ptr, ptr %677, align 4
  %679 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 2
  %680 = load i32, ptr %679, align 4
  %681 = getelementptr i8, ptr %678, i32 %680
  %682 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %681) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %683 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 5
  store i32 %682, ptr %683, align 4
  br label %684

684:                                              ; preds = %672, %669
  %685 = phi i32 [ %671, %669 ], [ %682, %672 ]
  %686 = or i32 %685, 1
  %687 = icmp eq i32 %685, %686
  br i1 %687, label %688, label %692

688:                                              ; preds = %684
  %689 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 1
  %690 = load i8, ptr %689, align 4, !range !15
  %691 = icmp eq i8 %690, 0
  br i1 %691, label %718, label %692

692:                                              ; preds = %688, %684
  %693 = load i32, ptr %188, align 4
  store i32 %693, ptr %395, align 4
  %694 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 5
  store i32 %686, ptr %694, align 4
  %695 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 4
  %696 = load i32, ptr %695, align 4
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %716, label %698

698:                                              ; preds = %692
  %699 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 2
  %700 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 3
  br label %701

701:                                              ; preds = %711, %698
  %702 = phi i32 [ 0, %698 ], [ %713, %711 ]
  %703 = phi i32 [ %696, %698 ], [ %714, %711 ]
  %704 = and i32 %703, 1
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %711, label %706

706:                                              ; preds = %701
  %707 = load ptr, ptr %0, align 4
  %708 = load i32, ptr %699, align 4
  %709 = add i32 %708, %702
  %710 = load i32, ptr %694, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %707, i32 noundef %709, i32 noundef %710) #11
  br label %711

711:                                              ; preds = %706, %701
  %712 = load i32, ptr %700, align 4
  %713 = add i32 %712, %702
  %714 = lshr i32 %703, 1
  %715 = icmp ult i32 %703, 2
  br i1 %715, label %716, label %701

716:                                              ; preds = %711, %692
  %717 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 8, i32 1
  store i8 0, ptr %717, align 4
  br label %718

718:                                              ; preds = %716, %688
  %719 = load ptr, ptr %0, align 4
  tail call void @nvkm_memx_wait(ptr noundef %719, i32 noundef 1274768, i32 noundef 131072, i32 noundef 131072, i32 noundef 64000) #11
  %720 = load i32, ptr %613, align 4
  %721 = load i32, ptr %188, align 4
  %722 = icmp eq i32 %720, %721
  br i1 %722, label %723, label %726

723:                                              ; preds = %718
  %724 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 5
  %725 = load i32, ptr %724, align 4
  br label %738

726:                                              ; preds = %718
  %727 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %728 = load ptr, ptr %727, align 4
  %729 = getelementptr inbounds %struct.nvkm_fb, ptr %728, i32 0, i32 1, i32 1
  %730 = load ptr, ptr %729, align 4
  %731 = getelementptr inbounds %struct.nvkm_device, ptr %730, i32 0, i32 11
  %732 = load ptr, ptr %731, align 4
  %733 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 2
  %734 = load i32, ptr %733, align 4
  %735 = getelementptr i8, ptr %732, i32 %734
  %736 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %735) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %737 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 5
  store i32 %736, ptr %737, align 4
  br label %738

738:                                              ; preds = %726, %723
  %739 = phi i32 [ %725, %723 ], [ %736, %726 ]
  %740 = and i32 %739, -524289
  %741 = icmp eq i32 %739, %740
  br i1 %741, label %742, label %746

742:                                              ; preds = %738
  %743 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 1
  %744 = load i8, ptr %743, align 4, !range !15
  %745 = icmp eq i8 %744, 0
  br i1 %745, label %772, label %746

746:                                              ; preds = %742, %738
  %747 = load i32, ptr %188, align 4
  store i32 %747, ptr %613, align 4
  %748 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 5
  store i32 %740, ptr %748, align 4
  %749 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 4
  %750 = load i32, ptr %749, align 4
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %770, label %752

752:                                              ; preds = %746
  %753 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 2
  %754 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 3
  br label %755

755:                                              ; preds = %765, %752
  %756 = phi i32 [ 0, %752 ], [ %767, %765 ]
  %757 = phi i32 [ %750, %752 ], [ %768, %765 ]
  %758 = and i32 %757, 1
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %765, label %760

760:                                              ; preds = %755
  %761 = load ptr, ptr %0, align 4
  %762 = load i32, ptr %753, align 4
  %763 = add i32 %762, %756
  %764 = load i32, ptr %748, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %761, i32 noundef %763, i32 noundef %764) #11
  br label %765

765:                                              ; preds = %760, %755
  %766 = load i32, ptr %754, align 4
  %767 = add i32 %766, %756
  %768 = lshr i32 %757, 1
  %769 = icmp ult i32 %757, 2
  br i1 %769, label %770, label %755

770:                                              ; preds = %765, %746
  %771 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 9, i32 1
  store i8 0, ptr %771, align 4
  br label %772

772:                                              ; preds = %770, %742, %336
  %773 = getelementptr i8, ptr %0, i32 2168
  %774 = load i32, ptr %773, align 8
  %775 = icmp eq i32 %774, 2
  %776 = load i32, ptr %186, align 4
  %777 = load i32, ptr %188, align 4
  %778 = icmp eq i32 %776, %777
  br i1 %775, label %779, label %1096

779:                                              ; preds = %772
  br i1 %778, label %780, label %783

780:                                              ; preds = %779
  %781 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %782 = load i32, ptr %781, align 4
  br label %795

783:                                              ; preds = %779
  %784 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %785 = load ptr, ptr %784, align 4
  %786 = getelementptr inbounds %struct.nvkm_fb, ptr %785, i32 0, i32 1, i32 1
  %787 = load ptr, ptr %786, align 4
  %788 = getelementptr inbounds %struct.nvkm_device, ptr %787, i32 0, i32 11
  %789 = load ptr, ptr %788, align 4
  %790 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %791 = load i32, ptr %790, align 4
  %792 = getelementptr i8, ptr %789, i32 %791
  %793 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %792) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %794 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %793, ptr %794, align 4
  br label %795

795:                                              ; preds = %783, %780
  %796 = phi i32 [ %782, %780 ], [ %793, %783 ]
  %797 = and i32 %796, -65537
  %798 = icmp eq i32 %796, %797
  br i1 %798, label %799, label %803

799:                                              ; preds = %795
  %800 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %801 = load i8, ptr %800, align 4, !range !15
  %802 = icmp eq i8 %801, 0
  br i1 %802, label %829, label %803

803:                                              ; preds = %799, %795
  %804 = load i32, ptr %188, align 4
  store i32 %804, ptr %186, align 4
  %805 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %797, ptr %805, align 4
  %806 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %807 = load i32, ptr %806, align 4
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %827, label %809

809:                                              ; preds = %803
  %810 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %811 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %812

812:                                              ; preds = %822, %809
  %813 = phi i32 [ 0, %809 ], [ %824, %822 ]
  %814 = phi i32 [ %807, %809 ], [ %825, %822 ]
  %815 = and i32 %814, 1
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %822, label %817

817:                                              ; preds = %812
  %818 = load ptr, ptr %0, align 4
  %819 = load i32, ptr %810, align 4
  %820 = add i32 %819, %813
  %821 = load i32, ptr %805, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %818, i32 noundef %820, i32 noundef %821) #11
  br label %822

822:                                              ; preds = %817, %812
  %823 = load i32, ptr %811, align 4
  %824 = add i32 %823, %813
  %825 = lshr i32 %814, 1
  %826 = icmp ult i32 %814, 2
  br i1 %826, label %827, label %812

827:                                              ; preds = %822, %803
  %828 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  store i8 0, ptr %828, align 4
  br label %829

829:                                              ; preds = %827, %799
  %830 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13
  %831 = load i32, ptr %830, align 4
  %832 = load i32, ptr %188, align 4
  %833 = icmp eq i32 %831, %832
  br i1 %833, label %834, label %837

834:                                              ; preds = %829
  %835 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  %836 = load i32, ptr %835, align 4
  br label %849

837:                                              ; preds = %829
  %838 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %839 = load ptr, ptr %838, align 4
  %840 = getelementptr inbounds %struct.nvkm_fb, ptr %839, i32 0, i32 1, i32 1
  %841 = load ptr, ptr %840, align 4
  %842 = getelementptr inbounds %struct.nvkm_device, ptr %841, i32 0, i32 11
  %843 = load ptr, ptr %842, align 4
  %844 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 2
  %845 = load i32, ptr %844, align 4
  %846 = getelementptr i8, ptr %843, i32 %845
  %847 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %846) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %848 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  store i32 %847, ptr %848, align 4
  br label %849

849:                                              ; preds = %837, %834
  %850 = phi i32 [ %836, %834 ], [ %847, %837 ]
  %851 = or i32 %850, -2147483648
  %852 = icmp eq i32 %850, %851
  br i1 %852, label %853, label %857

853:                                              ; preds = %849
  %854 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 1
  %855 = load i8, ptr %854, align 4, !range !15
  %856 = icmp eq i8 %855, 0
  br i1 %856, label %883, label %857

857:                                              ; preds = %853, %849
  %858 = load i32, ptr %188, align 4
  store i32 %858, ptr %830, align 4
  %859 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  store i32 %851, ptr %859, align 4
  %860 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 4
  %861 = load i32, ptr %860, align 4
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %881, label %863

863:                                              ; preds = %857
  %864 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 2
  %865 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 3
  br label %866

866:                                              ; preds = %876, %863
  %867 = phi i32 [ 0, %863 ], [ %878, %876 ]
  %868 = phi i32 [ %861, %863 ], [ %879, %876 ]
  %869 = and i32 %868, 1
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %876, label %871

871:                                              ; preds = %866
  %872 = load ptr, ptr %0, align 4
  %873 = load i32, ptr %864, align 4
  %874 = add i32 %873, %867
  %875 = load i32, ptr %859, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %872, i32 noundef %874, i32 noundef %875) #11
  br label %876

876:                                              ; preds = %871, %866
  %877 = load i32, ptr %865, align 4
  %878 = add i32 %877, %867
  %879 = lshr i32 %868, 1
  %880 = icmp ult i32 %868, 2
  br i1 %880, label %881, label %866

881:                                              ; preds = %876, %857
  %882 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 1
  store i8 0, ptr %882, align 4
  br label %883

883:                                              ; preds = %881, %853
  %884 = load i32, ptr %830, align 4
  %885 = load i32, ptr %188, align 4
  %886 = icmp eq i32 %884, %885
  br i1 %886, label %887, label %890

887:                                              ; preds = %883
  %888 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  %889 = load i32, ptr %888, align 4
  br label %902

890:                                              ; preds = %883
  %891 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %892 = load ptr, ptr %891, align 4
  %893 = getelementptr inbounds %struct.nvkm_fb, ptr %892, i32 0, i32 1, i32 1
  %894 = load ptr, ptr %893, align 4
  %895 = getelementptr inbounds %struct.nvkm_device, ptr %894, i32 0, i32 11
  %896 = load ptr, ptr %895, align 4
  %897 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 2
  %898 = load i32, ptr %897, align 4
  %899 = getelementptr i8, ptr %896, i32 %898
  %900 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %899) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %901 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  store i32 %900, ptr %901, align 4
  br label %902

902:                                              ; preds = %890, %887
  %903 = phi i32 [ %889, %887 ], [ %900, %890 ]
  %904 = and i32 %903, -2
  %905 = icmp eq i32 %903, %904
  br i1 %905, label %906, label %910

906:                                              ; preds = %902
  %907 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 1
  %908 = load i8, ptr %907, align 4, !range !15
  %909 = icmp eq i8 %908, 0
  br i1 %909, label %936, label %910

910:                                              ; preds = %906, %902
  %911 = load i32, ptr %188, align 4
  store i32 %911, ptr %830, align 4
  %912 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  store i32 %904, ptr %912, align 4
  %913 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 4
  %914 = load i32, ptr %913, align 4
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %934, label %916

916:                                              ; preds = %910
  %917 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 2
  %918 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 3
  br label %919

919:                                              ; preds = %929, %916
  %920 = phi i32 [ 0, %916 ], [ %931, %929 ]
  %921 = phi i32 [ %914, %916 ], [ %932, %929 ]
  %922 = and i32 %921, 1
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %929, label %924

924:                                              ; preds = %919
  %925 = load ptr, ptr %0, align 4
  %926 = load i32, ptr %917, align 4
  %927 = add i32 %926, %920
  %928 = load i32, ptr %912, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %925, i32 noundef %927, i32 noundef %928) #11
  br label %929

929:                                              ; preds = %924, %919
  %930 = load i32, ptr %918, align 4
  %931 = add i32 %930, %920
  %932 = lshr i32 %921, 1
  %933 = icmp ult i32 %921, 2
  br i1 %933, label %934, label %919

934:                                              ; preds = %929, %910
  %935 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 1
  store i8 0, ptr %935, align 4
  br label %936

936:                                              ; preds = %934, %906
  %937 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 14
  %938 = load i32, ptr %937, align 4
  %939 = load i32, ptr %188, align 4
  %940 = icmp eq i32 %938, %939
  br i1 %940, label %941, label %944

941:                                              ; preds = %936
  %942 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 14, i32 5
  %943 = load i32, ptr %942, align 4
  br label %956

944:                                              ; preds = %936
  %945 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %946 = load ptr, ptr %945, align 4
  %947 = getelementptr inbounds %struct.nvkm_fb, ptr %946, i32 0, i32 1, i32 1
  %948 = load ptr, ptr %947, align 4
  %949 = getelementptr inbounds %struct.nvkm_device, ptr %948, i32 0, i32 11
  %950 = load ptr, ptr %949, align 4
  %951 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 14, i32 2
  %952 = load i32, ptr %951, align 4
  %953 = getelementptr i8, ptr %950, i32 %952
  %954 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %953) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %955 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 14, i32 5
  store i32 %954, ptr %955, align 4
  br label %956

956:                                              ; preds = %944, %941
  %957 = phi i32 [ %943, %941 ], [ %954, %944 ]
  %958 = and i32 %957, -272629760
  %959 = or i32 %12, %958
  %960 = icmp eq i32 %957, %959
  br i1 %960, label %961, label %965

961:                                              ; preds = %956
  %962 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 14, i32 1
  %963 = load i8, ptr %962, align 4, !range !15
  %964 = icmp eq i8 %963, 0
  br i1 %964, label %991, label %965

965:                                              ; preds = %961, %956
  %966 = load i32, ptr %188, align 4
  store i32 %966, ptr %937, align 4
  %967 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 14, i32 5
  store i32 %959, ptr %967, align 4
  %968 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 14, i32 4
  %969 = load i32, ptr %968, align 4
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %989, label %971

971:                                              ; preds = %965
  %972 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 14, i32 2
  %973 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 14, i32 3
  br label %974

974:                                              ; preds = %984, %971
  %975 = phi i32 [ 0, %971 ], [ %986, %984 ]
  %976 = phi i32 [ %969, %971 ], [ %987, %984 ]
  %977 = and i32 %976, 1
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %984, label %979

979:                                              ; preds = %974
  %980 = load ptr, ptr %0, align 4
  %981 = load i32, ptr %972, align 4
  %982 = add i32 %981, %975
  %983 = load i32, ptr %967, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %980, i32 noundef %982, i32 noundef %983) #11
  br label %984

984:                                              ; preds = %979, %974
  %985 = load i32, ptr %973, align 4
  %986 = add i32 %985, %975
  %987 = lshr i32 %976, 1
  %988 = icmp ult i32 %976, 2
  br i1 %988, label %989, label %974

989:                                              ; preds = %984, %965
  %990 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 14, i32 1
  store i8 0, ptr %990, align 4
  br label %991

991:                                              ; preds = %989, %961
  %992 = load i32, ptr %830, align 4
  %993 = load i32, ptr %188, align 4
  %994 = icmp eq i32 %992, %993
  br i1 %994, label %995, label %998

995:                                              ; preds = %991
  %996 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  %997 = load i32, ptr %996, align 4
  br label %1010

998:                                              ; preds = %991
  %999 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %1000 = load ptr, ptr %999, align 4
  %1001 = getelementptr inbounds %struct.nvkm_fb, ptr %1000, i32 0, i32 1, i32 1
  %1002 = load ptr, ptr %1001, align 4
  %1003 = getelementptr inbounds %struct.nvkm_device, ptr %1002, i32 0, i32 11
  %1004 = load ptr, ptr %1003, align 4
  %1005 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 2
  %1006 = load i32, ptr %1005, align 4
  %1007 = getelementptr i8, ptr %1004, i32 %1006
  %1008 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1007) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1009 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  store i32 %1008, ptr %1009, align 4
  br label %1010

1010:                                             ; preds = %998, %995
  %1011 = phi i32 [ %997, %995 ], [ %1008, %998 ]
  %1012 = or i32 %1011, 1
  %1013 = icmp eq i32 %1011, %1012
  br i1 %1013, label %1014, label %1018

1014:                                             ; preds = %1010
  %1015 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 1
  %1016 = load i8, ptr %1015, align 4, !range !15
  %1017 = icmp eq i8 %1016, 0
  br i1 %1017, label %1044, label %1018

1018:                                             ; preds = %1014, %1010
  %1019 = load i32, ptr %188, align 4
  store i32 %1019, ptr %830, align 4
  %1020 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 5
  store i32 %1012, ptr %1020, align 4
  %1021 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 4
  %1022 = load i32, ptr %1021, align 4
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1042, label %1024

1024:                                             ; preds = %1018
  %1025 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 2
  %1026 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 3
  br label %1027

1027:                                             ; preds = %1037, %1024
  %1028 = phi i32 [ 0, %1024 ], [ %1039, %1037 ]
  %1029 = phi i32 [ %1022, %1024 ], [ %1040, %1037 ]
  %1030 = and i32 %1029, 1
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1037, label %1032

1032:                                             ; preds = %1027
  %1033 = load ptr, ptr %0, align 4
  %1034 = load i32, ptr %1025, align 4
  %1035 = add i32 %1034, %1028
  %1036 = load i32, ptr %1020, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1033, i32 noundef %1035, i32 noundef %1036) #11
  br label %1037

1037:                                             ; preds = %1032, %1027
  %1038 = load i32, ptr %1026, align 4
  %1039 = add i32 %1038, %1028
  %1040 = lshr i32 %1029, 1
  %1041 = icmp ult i32 %1029, 2
  br i1 %1041, label %1042, label %1027

1042:                                             ; preds = %1037, %1018
  %1043 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 13, i32 1
  store i8 0, ptr %1043, align 4
  br label %1044

1044:                                             ; preds = %1042, %1014
  %1045 = load ptr, ptr %0, align 4
  tail call void @nvkm_memx_wait(ptr noundef %1045, i32 noundef 1274768, i32 noundef 2, i32 noundef 2, i32 noundef 64000) #11
  %1046 = load i32, ptr %186, align 4
  %1047 = load i32, ptr %188, align 4
  %1048 = icmp eq i32 %1046, %1047
  br i1 %1048, label %1049, label %1052

1049:                                             ; preds = %1044
  %1050 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %1051 = load i32, ptr %1050, align 4
  br label %1064

1052:                                             ; preds = %1044
  %1053 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %1054 = load ptr, ptr %1053, align 4
  %1055 = getelementptr inbounds %struct.nvkm_fb, ptr %1054, i32 0, i32 1, i32 1
  %1056 = load ptr, ptr %1055, align 4
  %1057 = getelementptr inbounds %struct.nvkm_device, ptr %1056, i32 0, i32 11
  %1058 = load ptr, ptr %1057, align 4
  %1059 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %1060 = load i32, ptr %1059, align 4
  %1061 = getelementptr i8, ptr %1058, i32 %1060
  %1062 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1061) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1063 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %1062, ptr %1063, align 4
  br label %1064

1064:                                             ; preds = %1052, %1049
  %1065 = phi i32 [ %1051, %1049 ], [ %1062, %1052 ]
  %1066 = or i32 %1065, 4352
  %1067 = icmp eq i32 %1065, %1066
  br i1 %1067, label %1068, label %1072

1068:                                             ; preds = %1064
  %1069 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %1070 = load i8, ptr %1069, align 4, !range !15
  %1071 = icmp eq i8 %1070, 0
  br i1 %1071, label %1146, label %1072

1072:                                             ; preds = %1068, %1064
  %1073 = load i32, ptr %188, align 4
  store i32 %1073, ptr %186, align 4
  %1074 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %1066, ptr %1074, align 4
  %1075 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %1076 = load i32, ptr %1075, align 4
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1144, label %1078

1078:                                             ; preds = %1072
  %1079 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %1080 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %1081

1081:                                             ; preds = %1091, %1078
  %1082 = phi i32 [ 0, %1078 ], [ %1093, %1091 ]
  %1083 = phi i32 [ %1076, %1078 ], [ %1094, %1091 ]
  %1084 = and i32 %1083, 1
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1091, label %1086

1086:                                             ; preds = %1081
  %1087 = load ptr, ptr %0, align 4
  %1088 = load i32, ptr %1079, align 4
  %1089 = add i32 %1088, %1082
  %1090 = load i32, ptr %1074, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1087, i32 noundef %1089, i32 noundef %1090) #11
  br label %1091

1091:                                             ; preds = %1086, %1081
  %1092 = load i32, ptr %1080, align 4
  %1093 = add i32 %1092, %1082
  %1094 = lshr i32 %1083, 1
  %1095 = icmp ult i32 %1083, 2
  br i1 %1095, label %1144, label %1081

1096:                                             ; preds = %772
  br i1 %778, label %1097, label %1100

1097:                                             ; preds = %1096
  %1098 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %1099 = load i32, ptr %1098, align 4
  br label %1112

1100:                                             ; preds = %1096
  %1101 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %1102 = load ptr, ptr %1101, align 4
  %1103 = getelementptr inbounds %struct.nvkm_fb, ptr %1102, i32 0, i32 1, i32 1
  %1104 = load ptr, ptr %1103, align 4
  %1105 = getelementptr inbounds %struct.nvkm_device, ptr %1104, i32 0, i32 11
  %1106 = load ptr, ptr %1105, align 4
  %1107 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %1108 = load i32, ptr %1107, align 4
  %1109 = getelementptr i8, ptr %1106, i32 %1108
  %1110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1109) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1111 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %1110, ptr %1111, align 4
  br label %1112

1112:                                             ; preds = %1100, %1097
  %1113 = phi i32 [ %1099, %1097 ], [ %1110, %1100 ]
  %1114 = or i32 %1113, 65792
  %1115 = icmp eq i32 %1113, %1114
  br i1 %1115, label %1116, label %1120

1116:                                             ; preds = %1112
  %1117 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %1118 = load i8, ptr %1117, align 4, !range !15
  %1119 = icmp eq i8 %1118, 0
  br i1 %1119, label %1146, label %1120

1120:                                             ; preds = %1116, %1112
  %1121 = load i32, ptr %188, align 4
  store i32 %1121, ptr %186, align 4
  %1122 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %1114, ptr %1122, align 4
  %1123 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %1124 = load i32, ptr %1123, align 4
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1144, label %1126

1126:                                             ; preds = %1120
  %1127 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %1128 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %1129

1129:                                             ; preds = %1139, %1126
  %1130 = phi i32 [ 0, %1126 ], [ %1141, %1139 ]
  %1131 = phi i32 [ %1124, %1126 ], [ %1142, %1139 ]
  %1132 = and i32 %1131, 1
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1139, label %1134

1134:                                             ; preds = %1129
  %1135 = load ptr, ptr %0, align 4
  %1136 = load i32, ptr %1127, align 4
  %1137 = add i32 %1136, %1130
  %1138 = load i32, ptr %1122, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1135, i32 noundef %1137, i32 noundef %1138) #11
  br label %1139

1139:                                             ; preds = %1134, %1129
  %1140 = load i32, ptr %1128, align 4
  %1141 = add i32 %1140, %1130
  %1142 = lshr i32 %1131, 1
  %1143 = icmp ult i32 %1131, 2
  br i1 %1143, label %1144, label %1129

1144:                                             ; preds = %1139, %1120, %1091, %1072
  %1145 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  store i8 0, ptr %1145, align 4
  br label %1146

1146:                                             ; preds = %1144, %1116, %1068
  %1147 = load i32, ptr %186, align 4
  %1148 = load i32, ptr %188, align 4
  %1149 = icmp eq i32 %1147, %1148
  br i1 %1149, label %1150, label %1153

1150:                                             ; preds = %1146
  %1151 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %1152 = load i32, ptr %1151, align 4
  br label %1165

1153:                                             ; preds = %1146
  %1154 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %1155 = load ptr, ptr %1154, align 4
  %1156 = getelementptr inbounds %struct.nvkm_fb, ptr %1155, i32 0, i32 1, i32 1
  %1157 = load ptr, ptr %1156, align 4
  %1158 = getelementptr inbounds %struct.nvkm_device, ptr %1157, i32 0, i32 11
  %1159 = load ptr, ptr %1158, align 4
  %1160 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %1161 = load i32, ptr %1160, align 4
  %1162 = getelementptr i8, ptr %1159, i32 %1161
  %1163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1162) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %1164 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %1163, ptr %1164, align 4
  br label %1165

1165:                                             ; preds = %1153, %1150
  %1166 = phi i32 [ %1152, %1150 ], [ %1163, %1153 ]
  %1167 = or i32 %1166, 16
  %1168 = icmp eq i32 %1166, %1167
  br i1 %1168, label %1169, label %1173

1169:                                             ; preds = %1165
  %1170 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %1171 = load i8, ptr %1170, align 4, !range !15
  %1172 = icmp eq i8 %1171, 0
  br i1 %1172, label %1199, label %1173

1173:                                             ; preds = %1169, %1165
  %1174 = load i32, ptr %188, align 4
  store i32 %1174, ptr %186, align 4
  %1175 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %1167, ptr %1175, align 4
  %1176 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %1177 = load i32, ptr %1176, align 4
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1197, label %1179

1179:                                             ; preds = %1173
  %1180 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %1181 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %1182

1182:                                             ; preds = %1192, %1179
  %1183 = phi i32 [ 0, %1179 ], [ %1194, %1192 ]
  %1184 = phi i32 [ %1177, %1179 ], [ %1195, %1192 ]
  %1185 = and i32 %1184, 1
  %1186 = icmp eq i32 %1185, 0
  br i1 %1186, label %1192, label %1187

1187:                                             ; preds = %1182
  %1188 = load ptr, ptr %0, align 4
  %1189 = load i32, ptr %1180, align 4
  %1190 = add i32 %1189, %1183
  %1191 = load i32, ptr %1175, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %1188, i32 noundef %1190, i32 noundef %1191) #11
  br label %1192

1192:                                             ; preds = %1187, %1182
  %1193 = load i32, ptr %1181, align 4
  %1194 = add i32 %1193, %1183
  %1195 = lshr i32 %1184, 1
  %1196 = icmp ult i32 %1184, 2
  br i1 %1196, label %1197, label %1182

1197:                                             ; preds = %1192, %1173
  %1198 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  store i8 0, ptr %1198, align 4
  br label %1199

1199:                                             ; preds = %1197, %1169
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @r1373f4_fini(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -440
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 18
  %7 = and i32 %6, 3
  %8 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 45
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 45, i32 5
  %15 = load i32, ptr %14, align 4
  br label %28

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_fb, ptr %18, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 45, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %27 = load i32, ptr %10, align 4
  br label %28

28:                                               ; preds = %16, %13
  %29 = phi i32 [ %9, %13 ], [ %27, %16 ]
  %30 = phi i32 [ %15, %13 ], [ %26, %16 ]
  %31 = and i32 %30, -196609
  %32 = shl nuw nsw i32 %7, 16
  %33 = or i32 %31, %32
  store i32 %29, ptr %8, align 4
  %34 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 45, i32 5
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 45, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 45, i32 2
  %40 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 45, i32 3
  br label %41

41:                                               ; preds = %51, %38
  %42 = phi i32 [ 0, %38 ], [ %53, %51 ]
  %43 = phi i32 [ %36, %38 ], [ %54, %51 ]
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %0, align 4
  %48 = load i32, ptr %39, align 4
  %49 = add i32 %48, %42
  %50 = load i32, ptr %34, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %47, i32 noundef %49, i32 noundef %50) #11
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, ptr %40, align 4
  %53 = add i32 %52, %42
  %54 = lshr i32 %43, 1
  %55 = icmp ult i32 %43, 2
  br i1 %55, label %56, label %41

56:                                               ; preds = %51
  %57 = load i32, ptr %10, align 4
  br label %58

58:                                               ; preds = %56, %28
  %59 = phi i32 [ %57, %56 ], [ %29, %28 ]
  %60 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 61
  %61 = getelementptr i8, ptr %0, i32 2168
  %62 = load i32, ptr %61, align 8
  %63 = load i32, ptr %60, align 4
  %64 = icmp eq i32 %63, %59
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 61, i32 5
  %67 = load i32, ptr %66, align 4
  br label %80

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvkm_fb, ptr %70, i32 0, i32 1, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 11
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 61, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i8, ptr %74, i32 %76
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %79 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 61, i32 5
  store i32 %78, ptr %79, align 4
  br label %80

80:                                               ; preds = %68, %65
  %81 = phi i32 [ %67, %65 ], [ %78, %68 ]
  %82 = or i32 %62, -4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 61, i32 1
  %87 = load i8, ptr %86, align 4, !range !15
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %115, label %89

89:                                               ; preds = %85, %80
  %90 = load i32, ptr %10, align 4
  store i32 %90, ptr %60, align 4
  %91 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 61, i32 5
  store i32 %83, ptr %91, align 4
  %92 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 61, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 61, i32 2
  %97 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 61, i32 3
  br label %98

98:                                               ; preds = %108, %95
  %99 = phi i32 [ 0, %95 ], [ %110, %108 ]
  %100 = phi i32 [ %93, %95 ], [ %111, %108 ]
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr %0, align 4
  %105 = load i32, ptr %96, align 4
  %106 = add i32 %105, %99
  %107 = load i32, ptr %91, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %104, i32 noundef %106, i32 noundef %107) #11
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i32, ptr %97, align 4
  %110 = add i32 %109, %99
  %111 = lshr i32 %100, 1
  %112 = icmp ult i32 %100, 2
  br i1 %112, label %113, label %98

113:                                              ; preds = %108, %89
  %114 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 61, i32 1
  store i8 0, ptr %114, align 4
  br label %115

115:                                              ; preds = %113, %85
  %116 = load i32, ptr %61, align 8
  %117 = icmp eq i32 %116, 2
  %118 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62
  %119 = load i32, ptr %118, align 4
  %120 = load i32, ptr %10, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %117, label %122, label %224

122:                                              ; preds = %115
  br i1 %121, label %123, label %126

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %125 = load i32, ptr %124, align 4
  br label %138

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.nvkm_fb, ptr %128, i32 0, i32 1, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nvkm_device, ptr %130, i32 0, i32 11
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr i8, ptr %132, i32 %134
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %137 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %136, ptr %137, align 4
  br label %138

138:                                              ; preds = %126, %123
  %139 = phi i32 [ %125, %123 ], [ %136, %126 ]
  %140 = and i32 %139, -4
  %141 = or i32 %140, 2
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %145 = load i8, ptr %144, align 4, !range !15
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %173, label %147

147:                                              ; preds = %143, %138
  %148 = load i32, ptr %10, align 4
  store i32 %148, ptr %118, align 4
  %149 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %141, ptr %149, align 4
  %150 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %171, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %155 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %156

156:                                              ; preds = %166, %153
  %157 = phi i32 [ 0, %153 ], [ %168, %166 ]
  %158 = phi i32 [ %151, %153 ], [ %169, %166 ]
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr %0, align 4
  %163 = load i32, ptr %154, align 4
  %164 = add i32 %163, %157
  %165 = load i32, ptr %149, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %162, i32 noundef %164, i32 noundef %165) #11
  br label %166

166:                                              ; preds = %161, %156
  %167 = load i32, ptr %155, align 4
  %168 = add i32 %167, %157
  %169 = lshr i32 %158, 1
  %170 = icmp ult i32 %158, 2
  br i1 %170, label %171, label %156

171:                                              ; preds = %166, %147
  %172 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  store i8 0, ptr %172, align 4
  br label %173

173:                                              ; preds = %171, %143
  %174 = load i32, ptr %118, align 4
  %175 = load i32, ptr %10, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %179 = load i32, ptr %178, align 4
  br label %192

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.nvkm_fb, ptr %182, i32 0, i32 1, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.nvkm_device, ptr %184, i32 0, i32 11
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr i8, ptr %186, i32 %188
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %191 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %190, ptr %191, align 4
  br label %192

192:                                              ; preds = %180, %177
  %193 = phi i32 [ %179, %177 ], [ %190, %180 ]
  %194 = and i32 %193, -4353
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %198 = load i8, ptr %197, align 4, !range !15
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %328, label %200

200:                                              ; preds = %196, %192
  %201 = load i32, ptr %10, align 4
  store i32 %201, ptr %118, align 4
  %202 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %194, ptr %202, align 4
  %203 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %326, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %208 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %209

209:                                              ; preds = %219, %206
  %210 = phi i32 [ 0, %206 ], [ %221, %219 ]
  %211 = phi i32 [ %204, %206 ], [ %222, %219 ]
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %209
  %215 = load ptr, ptr %0, align 4
  %216 = load i32, ptr %207, align 4
  %217 = add i32 %216, %210
  %218 = load i32, ptr %202, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %215, i32 noundef %217, i32 noundef %218) #11
  br label %219

219:                                              ; preds = %214, %209
  %220 = load i32, ptr %208, align 4
  %221 = add i32 %220, %210
  %222 = lshr i32 %211, 1
  %223 = icmp ult i32 %211, 2
  br i1 %223, label %326, label %209

224:                                              ; preds = %115
  br i1 %121, label %225, label %228

225:                                              ; preds = %224
  %226 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %227 = load i32, ptr %226, align 4
  br label %240

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.nvkm_fb, ptr %230, i32 0, i32 1, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.nvkm_device, ptr %232, i32 0, i32 11
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr i8, ptr %234, i32 %236
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %239 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %238, ptr %239, align 4
  br label %240

240:                                              ; preds = %228, %225
  %241 = phi i32 [ %227, %225 ], [ %238, %228 ]
  %242 = and i32 %241, -4
  %243 = or i32 %242, 1
  %244 = icmp eq i32 %241, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %247 = load i8, ptr %246, align 4, !range !15
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %275, label %249

249:                                              ; preds = %245, %240
  %250 = load i32, ptr %10, align 4
  store i32 %250, ptr %118, align 4
  %251 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %243, ptr %251, align 4
  %252 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %273, label %255

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %257 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %258

258:                                              ; preds = %268, %255
  %259 = phi i32 [ 0, %255 ], [ %270, %268 ]
  %260 = phi i32 [ %253, %255 ], [ %271, %268 ]
  %261 = and i32 %260, 1
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %258
  %264 = load ptr, ptr %0, align 4
  %265 = load i32, ptr %256, align 4
  %266 = add i32 %265, %259
  %267 = load i32, ptr %251, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %264, i32 noundef %266, i32 noundef %267) #11
  br label %268

268:                                              ; preds = %263, %258
  %269 = load i32, ptr %257, align 4
  %270 = add i32 %269, %259
  %271 = lshr i32 %260, 1
  %272 = icmp ult i32 %260, 2
  br i1 %272, label %273, label %258

273:                                              ; preds = %268, %249
  %274 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  store i8 0, ptr %274, align 4
  br label %275

275:                                              ; preds = %273, %245
  %276 = load i32, ptr %118, align 4
  %277 = load i32, ptr %10, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  %281 = load i32, ptr %280, align 4
  br label %294

282:                                              ; preds = %275
  %283 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %284 = load ptr, ptr %283, align 4
  %285 = getelementptr inbounds %struct.nvkm_fb, ptr %284, i32 0, i32 1, i32 1
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.nvkm_device, ptr %286, i32 0, i32 11
  %288 = load ptr, ptr %287, align 4
  %289 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr i8, ptr %288, i32 %290
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %293 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %292, ptr %293, align 4
  br label %294

294:                                              ; preds = %282, %279
  %295 = phi i32 [ %281, %279 ], [ %292, %282 ]
  %296 = and i32 %295, -65537
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  %300 = load i8, ptr %299, align 4, !range !15
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %328, label %302

302:                                              ; preds = %298, %294
  %303 = load i32, ptr %10, align 4
  store i32 %303, ptr %118, align 4
  %304 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 5
  store i32 %296, ptr %304, align 4
  %305 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 4
  %306 = load i32, ptr %305, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %326, label %308

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 2
  %310 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 3
  br label %311

311:                                              ; preds = %321, %308
  %312 = phi i32 [ 0, %308 ], [ %323, %321 ]
  %313 = phi i32 [ %306, %308 ], [ %324, %321 ]
  %314 = and i32 %313, 1
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %321, label %316

316:                                              ; preds = %311
  %317 = load ptr, ptr %0, align 4
  %318 = load i32, ptr %309, align 4
  %319 = add i32 %318, %312
  %320 = load i32, ptr %304, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %317, i32 noundef %319, i32 noundef %320) #11
  br label %321

321:                                              ; preds = %316, %311
  %322 = load i32, ptr %310, align 4
  %323 = add i32 %322, %312
  %324 = lshr i32 %313, 1
  %325 = icmp ult i32 %313, 2
  br i1 %325, label %326, label %311

326:                                              ; preds = %321, %302, %219, %200
  %327 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 62, i32 1
  store i8 0, ptr %327, align 4
  br label %328

328:                                              ; preds = %326, %298, %196
  %329 = lshr i32 %5, 20
  %330 = and i32 %329, 3
  %331 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 46
  %332 = xor i32 %330, %7
  %333 = shl nuw nsw i32 %332, 4
  %334 = load i32, ptr %331, align 4
  %335 = load i32, ptr %10, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %328
  %338 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 46, i32 5
  %339 = load i32, ptr %338, align 4
  br label %352

340:                                              ; preds = %328
  %341 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.nvkm_fb, ptr %342, i32 0, i32 1, i32 1
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr inbounds %struct.nvkm_device, ptr %344, i32 0, i32 11
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 46, i32 2
  %348 = load i32, ptr %347, align 4
  %349 = getelementptr i8, ptr %346, i32 %348
  %350 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %349) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %351 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 46, i32 5
  store i32 %350, ptr %351, align 4
  br label %352

352:                                              ; preds = %340, %337
  %353 = phi i32 [ %339, %337 ], [ %350, %340 ]
  %354 = and i32 %353, -49
  %355 = or i32 %354, %333
  %356 = icmp eq i32 %353, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 46, i32 1
  %359 = load i8, ptr %358, align 4, !range !15
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %387, label %361

361:                                              ; preds = %357, %352
  %362 = load i32, ptr %10, align 4
  store i32 %362, ptr %331, align 4
  %363 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 46, i32 5
  store i32 %355, ptr %363, align 4
  %364 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 46, i32 4
  %365 = load i32, ptr %364, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %385, label %367

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 46, i32 2
  %369 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 46, i32 3
  br label %370

370:                                              ; preds = %380, %367
  %371 = phi i32 [ 0, %367 ], [ %382, %380 ]
  %372 = phi i32 [ %365, %367 ], [ %383, %380 ]
  %373 = and i32 %372, 1
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %380, label %375

375:                                              ; preds = %370
  %376 = load ptr, ptr %0, align 4
  %377 = load i32, ptr %368, align 4
  %378 = add i32 %377, %371
  %379 = load i32, ptr %363, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %376, i32 noundef %378, i32 noundef %379) #11
  br label %380

380:                                              ; preds = %375, %370
  %381 = load i32, ptr %369, align 4
  %382 = add i32 %381, %371
  %383 = lshr i32 %372, 1
  %384 = icmp ult i32 %372, 2
  br i1 %384, label %385, label %370

385:                                              ; preds = %380, %361
  %386 = getelementptr inbounds %struct.gk104_ramfuc, ptr %0, i32 0, i32 46, i32 1
  store i8 0, ptr %386, align 4
  br label %387

387:                                              ; preds = %385, %357
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0205Ep(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0205Sp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0209Ep(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0209Sp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapEp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapSp(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_timingEp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_ram_probe_fbp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf108_ram_probe_fbp_amount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_ram_probe_fbpa_amount(ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2154894106, i64 2154894621, i64 2154894143, i64 2154894199, i64 2154894233, i64 2154894257, i64 2154894298, i64 2154894319, i64 2154894347, i64 2154894381}
!10 = !{i64 3998117}
!11 = !{i64 2151537570}
!12 = !{i64 2151538792}
!13 = !{i64 3997699}
!14 = !{!"auto-init"}
!15 = !{i8 0, i8 2}
