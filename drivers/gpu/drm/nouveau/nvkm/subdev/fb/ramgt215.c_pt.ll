; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ramfuc_reg = type { i32, i8, i32, i32, i32, i32 }
%struct.gt215_ram = type { %struct.nvkm_ram, %struct.gt215_ramfuc, %struct.gt215_ltrain }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.122, i32, i32, i32, i32, i32, i32, %union.anon.126, i32, i32, [11 x i32], %union.anon.130 }>
%union.anon.122 = type { %struct.anon.125 }
%struct.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32, i8 }
%union.anon.130 = type <{ %struct.anon.132, [12 x i8] }>
%struct.anon.132 = type { i48 }
%struct.gt215_ramfuc = type { %struct.ramfuc, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, [9 x %struct.ramfuc_reg], %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, [4 x %struct.ramfuc_reg], [4 x %struct.ramfuc_reg] }
%struct.ramfuc = type { ptr, ptr, i32 }
%struct.gt215_ltrain = type { i32, i32, i32, i32, ptr }
%struct.nvbios_M0205E = type { i8 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.133, %struct.anon.134, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.133 = type { %struct.mutex, %struct.nvkm_mm }
%struct.anon.134 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_M0205T = type { i16 }
%struct.gt215_clk_info = type { i32, i32, i32, i32 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@gt215_ram_func = internal constant %struct.nvkm_ram_func { i64 0, ptr null, ptr null, ptr null, ptr @gt215_ram_dtor, ptr @gt215_ram_init, ptr @gt215_ram_calc, ptr @gt215_ram_prog, ptr @gt215_ram_tidy }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gt215_link_train_init.pattern = internal unnamed_addr constant [16 x i32] [i32 -1431655766, i32 -858993460, i32 -572662307, i32 -286331154, i32 0, i32 286331153, i32 1145324612, i32 -572662307, i32 858993459, i32 1431655765, i32 2004318071, i32 1717986918, i32 -1717986919, i32 -2004318072, i32 -286331154, i32 -1145324613], align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: invalid/missing rammap entry\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: invalid ramcfg strap\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: invalid/missing ramcfg entry\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: invalid/missing timing entry\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: failed mclk calculation\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NvMemExec\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s: Train: %08x\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: Train: %08x %08x %08x\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%s: Entry: 220: %08x %08x %08x %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%s:   230: %08x %08x %08x %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"%s:   240: %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt215_ram_new(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ramfuc_reg, align 4
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
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 1856) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %155, label %44

44:                                               ; preds = %2
  store ptr %42, ptr %1, align 4
  %45 = tail call i32 @nv50_ram_ctor(ptr noundef nonnull @gt215_ram_func, ptr noundef %0, ptr noundef nonnull %42) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %155

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %3, i32 noundef 5648)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %48, ptr noundef nonnull align 4 dereferenceable(24) %3, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  %49 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %4, i32 noundef 5888)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %49, ptr noundef nonnull align 4 dereferenceable(24) %4, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  %50 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %5, i32 noundef 9476)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %50, ptr noundef nonnull align 4 dereferenceable(24) %5, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  %51 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %6, i32 noundef 16384)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %51, ptr noundef nonnull align 4 dereferenceable(24) %6, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  %52 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %7, i32 noundef 16388)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %52, ptr noundef nonnull align 4 dereferenceable(24) %7, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  %53 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %8, i32 noundef 16408)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %53, ptr noundef nonnull align 4 dereferenceable(24) %8, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  %54 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %9, i32 noundef 16680)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %54, ptr noundef nonnull align 4 dereferenceable(24) %9, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  %55 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %10, i32 noundef 16744)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %55, ptr noundef nonnull align 4 dereferenceable(24) %10, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  %56 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %11, i32 noundef 1048704)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %56, ptr noundef nonnull align 4 dereferenceable(24) %11, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  %57 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %12, i32 noundef 1049088)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %57, ptr noundef nonnull align 4 dereferenceable(24) %12, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #11
  %58 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %13, i32 noundef 1049104)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %58, ptr noundef nonnull align 4 dereferenceable(24) %13, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #11
  %59 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 12, i32 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1049120)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %59, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %60 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 12, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1049124)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %60, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %61 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 12, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1049128)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %61, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %62 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 12, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1049132)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %62, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %63 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 12, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1049136)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %63, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %64 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 12, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1049140)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %64, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %65 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 12, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1049144)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %65, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %66 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 12, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1049148)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %66, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %67 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 12, i32 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1049152)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %67, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %68 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %15, i32 noundef 1049188)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %68, ptr noundef nonnull align 4 dereferenceable(24) %15, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  %69 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %16, i32 noundef 1049296)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %69, ptr noundef nonnull align 4 dereferenceable(24) %16, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #11
  %70 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %17, i32 noundef 1049300)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %70, ptr noundef nonnull align 4 dereferenceable(24) %17, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  %71 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %18, i32 noundef 1049308)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %71, ptr noundef nonnull align 4 dereferenceable(24) %18, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #11
  %72 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %19, i32 noundef 1049916)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %72, ptr noundef nonnull align 4 dereferenceable(24) %19, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #11
  %73 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %20, i32 noundef 1050016)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %73, ptr noundef nonnull align 4 dereferenceable(24) %20, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #11
  %74 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %21, i32 noundef 1050020)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %74, ptr noundef nonnull align 4 dereferenceable(24) %21, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #11
  %75 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %22, i32 noundef 1050368)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %75, ptr noundef nonnull align 4 dereferenceable(24) %22, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #11
  %76 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %23, i32 noundef 1050388)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %76, ptr noundef nonnull align 4 dereferenceable(24) %23, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #11
  %77 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %24, i32 noundef 1050392)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %77, ptr noundef nonnull align 4 dereferenceable(24) %24, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #11
  %78 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %25, i32 noundef 1050396)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %78, ptr noundef nonnull align 4 dereferenceable(24) %25, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #11
  %79 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %26, i32 noundef 1050400)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %79, ptr noundef nonnull align 4 dereferenceable(24) %26, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #11
  %80 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 25
  %81 = getelementptr inbounds %struct.nvkm_ram, ptr %42, i32 0, i32 9
  %82 = load i32, ptr %81, align 4
  store i32 0, ptr %80, align 4
  %83 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 25, i32 1
  store i8 0, ptr %83, align 8
  %84 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 25, i32 2
  store i32 1050464, ptr %84, align 4
  %85 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 25, i32 3
  store i32 4, ptr %85, align 8
  %86 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 25, i32 4
  store i32 %82, ptr %86, align 4
  %87 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 25, i32 5
  store i32 -559038737, ptr %87, align 8
  %88 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 26
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 26, i32 1
  store i8 0, ptr %89, align 8
  %90 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 26, i32 2
  store i32 1050528, ptr %90, align 4
  %91 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 26, i32 3
  store i32 4, ptr %91, align 8
  %92 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 26, i32 4
  store i32 %82, ptr %92, align 4
  %93 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 26, i32 5
  store i32 -559038737, ptr %93, align 8
  %94 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 27
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 27, i32 1
  store i8 0, ptr %95, align 8
  %96 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 27, i32 2
  store i32 1050592, ptr %96, align 4
  %97 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 27, i32 3
  store i32 4, ptr %97, align 8
  %98 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 27, i32 4
  store i32 %82, ptr %98, align 4
  %99 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 27, i32 5
  store i32 -559038737, ptr %99, align 8
  %100 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 28
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 28, i32 1
  store i8 0, ptr %101, align 8
  %102 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 28, i32 2
  store i32 1052064, ptr %102, align 4
  %103 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 28, i32 3
  store i32 4, ptr %103, align 8
  %104 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 28, i32 4
  store i32 %82, ptr %104, align 4
  %105 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 28, i32 5
  store i32 -559038737, ptr %105, align 8
  %106 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %27, i32 noundef 1112068)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %106, ptr noundef nonnull align 4 dereferenceable(24) %27, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #11
  %107 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 30
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 30, i32 1
  store i8 0, ptr %108, align 8
  %109 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 30, i32 2
  store i32 1118432, ptr %109, align 4
  %110 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 30, i32 3
  store i32 4, ptr %110, align 8
  %111 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 30, i32 4
  store i32 %82, ptr %111, align 4
  %112 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 30, i32 5
  store i32 -559038737, ptr %112, align 8
  %113 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %28, i32 noundef 1118464)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %113, ptr noundef nonnull align 4 dereferenceable(24) %28, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #11
  %114 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %29, i32 noundef 1118468)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %114, ptr noundef nonnull align 4 dereferenceable(24) %29, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #11
  %115 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %30, i32 noundef 1118688)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %115, ptr noundef nonnull align 4 dereferenceable(24) %30, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #11
  %116 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %31) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %31, i32 noundef 1119232)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %116, ptr noundef nonnull align 4 dereferenceable(24) %31, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %31) #11
  %117 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %32, i32 noundef 6361600)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %117, ptr noundef nonnull align 4 dereferenceable(24) %32, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #11
  %118 = getelementptr inbounds %struct.nvkm_ram, ptr %42, i32 0, i32 7
  %119 = load i32, ptr %118, align 4
  %120 = icmp sgt i32 %119, 1
  %121 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36
  br i1 %120, label %122, label %146

122:                                              ; preds = %47
  store i32 0, ptr %121, align 4
  %123 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 0, i32 1
  store i8 0, ptr %123, align 8
  %124 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 0, i32 2
  store i32 1049280, ptr %124, align 4
  %125 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 0, i32 3
  store i32 8, ptr %125, align 8
  %126 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 0, i32 4
  store i32 3, ptr %126, align 4
  %127 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 0, i32 5
  store i32 -559038737, ptr %127, align 8
  %128 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 1
  store i32 0, ptr %128, align 4
  %129 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 1, i32 1
  store i8 0, ptr %129, align 8
  %130 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 1, i32 2
  store i32 1049284, ptr %130, align 4
  %131 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 1, i32 3
  store i32 8, ptr %131, align 8
  %132 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 1, i32 4
  store i32 3, ptr %132, align 4
  %133 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 1, i32 5
  store i32 -559038737, ptr %133, align 8
  %134 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 2
  store i32 0, ptr %134, align 4
  %135 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 2, i32 1
  store i8 0, ptr %135, align 8
  %136 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 2, i32 2
  store i32 1049312, ptr %136, align 4
  %137 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 2, i32 3
  store i32 8, ptr %137, align 8
  %138 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 2, i32 4
  store i32 3, ptr %138, align 4
  %139 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 2, i32 5
  store i32 -559038737, ptr %139, align 8
  %140 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 3
  store i32 0, ptr %140, align 4
  %141 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 3, i32 1
  store i8 0, ptr %141, align 8
  %142 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 3, i32 2
  store i32 1049316, ptr %142, align 4
  %143 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 3, i32 3
  store i32 8, ptr %143, align 8
  %144 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 3, i32 4
  store i32 3, ptr %144, align 4
  %145 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 3, i32 5
  store i32 -559038737, ptr %145, align 8
  br label %150

146:                                              ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %33) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %33, i32 noundef 1049280)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %121, ptr noundef nonnull align 4 dereferenceable(24) %33, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %33) #11
  %147 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %34) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %34, i32 noundef 1049284)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %147, ptr noundef nonnull align 4 dereferenceable(24) %34, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %34) #11
  %148 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %35) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %35, i32 noundef 1049312)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %148, ptr noundef nonnull align 4 dereferenceable(24) %35, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %35) #11
  %149 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 36, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %36) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %36, i32 noundef 1049316)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %149, ptr noundef nonnull align 4 dereferenceable(24) %36, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %36) #11
  br label %150

150:                                              ; preds = %146, %122
  %151 = getelementptr inbounds %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %37) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %37, i32 noundef 57604)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %151, ptr noundef nonnull align 4 dereferenceable(24) %37, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %37) #11
  %152 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 37, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %38) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %38, i32 noundef 57608)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %152, ptr noundef nonnull align 4 dereferenceable(24) %38, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %38) #11
  %153 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 37, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %39) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %39, i32 noundef 57632)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %153, ptr noundef nonnull align 4 dereferenceable(24) %39, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %39) #11
  %154 = getelementptr %struct.gt215_ram, ptr %42, i32 0, i32 1, i32 37, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %40) #11
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %40, i32 noundef 57636)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %154, ptr noundef nonnull align 4 dereferenceable(24) %40, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %40) #11
  br label %155

155:                                              ; preds = %150, %44, %2
  %156 = phi i32 [ 0, %150 ], [ -12, %2 ], [ %45, %44 ]
  ret i32 %156
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_ram_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @ramfuc_reg(ptr noalias nocapture writeonly sret(%struct.ramfuc_reg) align 4 %0, i32 noundef %1) unnamed_addr #3 {
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
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gt215_ram_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 4
  tail call void @nvkm_memory_unref(ptr noundef %2) #11
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt215_ram_init(ptr noundef %0) #0 {
  %2 = alloca %struct.nvbios_M0205E, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_fb, ptr %9, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !8
  store i32 1, ptr %7, align 4
  %14 = call i32 @nvbios_M0205Ep(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %2) #11
  %15 = icmp ne i32 %14, 0
  %16 = load i8, ptr %2, align 1
  %17 = icmp eq i8 %16, 5
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %110

19:                                               ; preds = %1
  store i32 2, ptr %7, align 4
  %20 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 4
  %21 = call i32 @nvkm_ram_get(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 16, i64 noundef 32768, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %20) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %110

23:                                               ; preds = %19
  %24 = load ptr, ptr %20, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_memory_func, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = call i64 %27(ptr noundef %24) #11
  %29 = lshr i64 %28, 16
  %30 = trunc i64 %29 to i32
  %31 = or i32 %30, 268435456
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 1049912
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #11, !srcloc !10
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr i8, ptr %35, i32 1050024
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 65535) #11, !srcloc !10
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr i8, ptr %37, i32 1112064
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %40 = or i32 %39, 1
  %41 = load ptr, ptr %32, align 4
  %42 = getelementptr i8, ptr %41, i32 1112064
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #11, !srcloc !10
  br label %43

43:                                               ; preds = %43, %23
  %44 = phi i32 [ 0, %23 ], [ %54, %43 ]
  %45 = shl i32 %44, 8
  %46 = or i32 %45, %44
  %47 = load ptr, ptr %32, align 4
  %48 = getelementptr i8, ptr %47, i32 1112256
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #11, !srcloc !10
  %49 = and i32 %44, 15
  %50 = getelementptr [16 x i32], ptr @gt215_link_train_init.pattern, i32 0, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %32, align 4
  %53 = getelementptr i8, ptr %52, i32 1112320
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #11, !srcloc !10
  %54 = add nuw nsw i32 %44, 1
  %55 = icmp eq i32 %54, 48
  br i1 %55, label %56, label %43

56:                                               ; preds = %56, %43
  %57 = phi i32 [ %67, %56 ], [ 0, %43 ]
  %58 = shl i32 %57, 8
  %59 = or i32 %58, %57
  %60 = load ptr, ptr %32, align 4
  %61 = getelementptr i8, ptr %60, i32 1112288
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #11, !srcloc !10
  %62 = and i32 %57, 15
  %63 = getelementptr [16 x i32], ptr @gt215_link_train_init.pattern, i32 0, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %32, align 4
  %66 = getelementptr i8, ptr %65, i32 1112352
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #11, !srcloc !10
  %67 = add nuw nsw i32 %57, 1
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %69, label %56

69:                                               ; preds = %56
  %70 = load ptr, ptr %32, align 4
  %71 = getelementptr i8, ptr %70, i32 5888
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %73 = load ptr, ptr %32, align 4
  %74 = getelementptr i8, ptr %73, i32 5888
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %30) #11, !srcloc !10
  br label %75

75:                                               ; preds = %75, %69
  %76 = phi i32 [ 0, %69 ], [ %83, %75 ]
  %77 = getelementptr [16 x i32], ptr @gt215_link_train_init.pattern, i32 0, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %32, align 4
  %80 = shl i32 %76, 2
  %81 = add nuw nsw i32 %80, 7340032
  %82 = getelementptr i8, ptr %79, i32 %81
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %78) #11, !srcloc !10
  %83 = add nuw nsw i32 %76, 1
  %84 = icmp eq i32 %83, 16
  br i1 %84, label %85, label %75

85:                                               ; preds = %85, %75
  %86 = phi i32 [ %93, %85 ], [ 0, %75 ]
  %87 = getelementptr [16 x i32], ptr @gt215_link_train_init.pattern, i32 0, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %32, align 4
  %90 = shl i32 %86, 2
  %91 = add nuw nsw i32 %90, 7340288
  %92 = getelementptr i8, ptr %89, i32 %91
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %88) #11, !srcloc !10
  %93 = add nuw nsw i32 %86, 1
  %94 = icmp eq i32 %93, 16
  br i1 %94, label %95, label %85

95:                                               ; preds = %85
  %96 = load ptr, ptr %32, align 4
  %97 = getelementptr i8, ptr %96, i32 5888
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %72) #11, !srcloc !10
  %98 = load ptr, ptr %32, align 4
  %99 = getelementptr i8, ptr %98, i32 1050400
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %101 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 1
  store i32 %100, ptr %101, align 4
  %102 = load ptr, ptr %32, align 4
  %103 = getelementptr i8, ptr %102, i32 1118688
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %105 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 2
  store i32 %104, ptr %105, align 4
  %106 = load ptr, ptr %32, align 4
  %107 = getelementptr i8, ptr %106, i32 1119232
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %109 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 3
  store i32 %108, ptr %109, align 4
  br label %110

110:                                              ; preds = %95, %19, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt215_ram_calc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca [4 x i8], align 4
  %5 = alloca %struct.nvbios_M0205T, align 2
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.gt215_clk_info, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 21
  %26 = load ptr, ptr %25, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %13, i8 0, i32 16, i1 false), !annotation !8
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 25
  %28 = load ptr, ptr %27, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #11
  store i8 0, ptr %14, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #11
  store i8 0, ptr %15, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #11
  store i8 0, ptr %16, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #11
  store i8 0, ptr %17, align 1, !annotation !8
  %29 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16
  %30 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 2
  store i32 %1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  store ptr %29, ptr %31, align 8
  %32 = load i32, ptr %19, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %948

34:                                               ; preds = %2
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 21
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 43
  %39 = load ptr, ptr %38, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 0, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 0, ptr %11, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  store i32 0, ptr %12, align 4, !annotation !8
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %41, ptr noundef nonnull @.str.5, i1 noundef zeroext true) #11
  br i1 %42, label %43, label %947

43:                                               ; preds = %34
  %44 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3264, i32 noundef 256) #10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %947, label %47

47:                                               ; preds = %43
  store i32 3, ptr %19, align 4
  %48 = call i32 @nvbios_M0205Tp(ptr noundef %37, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %5) #11
  %49 = load i16, ptr %5, align 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void @kfree(ptr noundef nonnull %45) #11
  br label %947

52:                                               ; preds = %47
  %53 = call i32 @nvkm_clk_read(ptr noundef %39, i32 noundef 18) #11
  %54 = call i32 @gt215_clk_pre(ptr noundef %39, ptr noundef nonnull %12) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %943

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr inbounds %struct.nvkm_ram_func, ptr %57, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = load i16, ptr %5, align 2
  %61 = zext i16 %60 to i32
  %62 = mul nuw nsw i32 %61, 1000
  %63 = call i32 %59(ptr noundef %0, i32 noundef %62) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %943

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 11
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 1119232
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 0) #11, !srcloc !10
  %69 = load ptr, ptr %66, align 4
  %70 = getelementptr i8, ptr %69, i32 1050228
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %72 = and i32 %71, -65536
  %73 = load ptr, ptr %66, align 4
  %74 = getelementptr i8, ptr %73, i32 1050228
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #11, !srcloc !10
  %75 = load ptr, ptr %66, align 4
  %76 = getelementptr i8, ptr %75, i32 1050084
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %78 = and i32 %77, -65536
  %79 = load ptr, ptr %66, align 4
  %80 = getelementptr i8, ptr %79, i32 1050084
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #11, !srcloc !10
  %81 = load ptr, ptr %66, align 4
  %82 = getelementptr i8, ptr %81, i32 1051404
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %84 = and i32 %83, -256
  %85 = load ptr, ptr %66, align 4
  %86 = getelementptr i8, ptr %85, i32 1051404
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #11, !srcloc !10
  %87 = load ptr, ptr %66, align 4
  %88 = getelementptr i8, ptr %87, i32 1051652
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 1024) #11, !srcloc !10
  %89 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %65
  %95 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 2, i32 5
  %96 = load i32, ptr %95, align 4
  br label %110

97:                                               ; preds = %65
  %98 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.nvkm_fb, ptr %99, i32 0, i32 1, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 11
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 2, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i8, ptr %103, i32 %105
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %108 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 2, i32 5
  store i32 %107, ptr %108, align 4
  %109 = load i32, ptr %91, align 4
  br label %110

110:                                              ; preds = %97, %94
  %111 = phi i32 [ %90, %94 ], [ %109, %97 ]
  %112 = phi i32 [ %96, %94 ], [ %107, %97 ]
  %113 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, %111
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 5
  %118 = load i32, ptr %117, align 4
  br label %131

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.nvkm_fb, ptr %121, i32 0, i32 1, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 11
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr i8, ptr %125, i32 %127
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %130 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 5
  store i32 %129, ptr %130, align 4
  br label %131

131:                                              ; preds = %119, %116
  %132 = phi i32 [ %118, %116 ], [ %129, %119 ]
  %133 = and i32 %132, -2049
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 1
  %137 = load i8, ptr %136, align 4, !range !13
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %165, label %139

139:                                              ; preds = %135, %131
  %140 = load i32, ptr %91, align 4
  store i32 %140, ptr %113, align 4
  %141 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 5
  store i32 %133, ptr %141, align 4
  %142 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 4
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %163, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 2
  %147 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 3
  br label %148

148:                                              ; preds = %158, %145
  %149 = phi i32 [ 0, %145 ], [ %160, %158 ]
  %150 = phi i32 [ %143, %145 ], [ %161, %158 ]
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load ptr, ptr %18, align 4
  %155 = load i32, ptr %146, align 4
  %156 = add i32 %155, %149
  %157 = load i32, ptr %141, align 4
  call void @nvkm_memx_wr32(ptr noundef %154, i32 noundef %156, i32 noundef %157) #11
  br label %158

158:                                              ; preds = %153, %148
  %159 = load i32, ptr %147, align 4
  %160 = add i32 %159, %149
  %161 = lshr i32 %150, 1
  %162 = icmp ult i32 %150, 2
  br i1 %162, label %163, label %148

163:                                              ; preds = %158, %139
  %164 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 1
  store i8 0, ptr %164, align 4
  br label %165

165:                                              ; preds = %163, %135
  %166 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 35
  %167 = load i32, ptr %91, align 4
  store i32 %167, ptr %166, align 4
  %168 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 35, i32 5
  store i32 13056, ptr %168, align 4
  %169 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 35, i32 4
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %190, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 35, i32 2
  %174 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 35, i32 3
  br label %175

175:                                              ; preds = %185, %172
  %176 = phi i32 [ 0, %172 ], [ %187, %185 ]
  %177 = phi i32 [ %170, %172 ], [ %188, %185 ]
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %18, align 4
  %182 = load i32, ptr %173, align 4
  %183 = add i32 %182, %176
  %184 = load i32, ptr %168, align 4
  call void @nvkm_memx_wr32(ptr noundef %181, i32 noundef %183, i32 noundef %184) #11
  br label %185

185:                                              ; preds = %180, %175
  %186 = load i32, ptr %174, align 4
  %187 = add i32 %186, %176
  %188 = lshr i32 %177, 1
  %189 = icmp ult i32 %177, 2
  br i1 %189, label %190, label %175

190:                                              ; preds = %185, %165
  %191 = load ptr, ptr %18, align 4
  call void @nvkm_memx_wait_vblank(ptr noundef %191) #11
  %192 = load ptr, ptr %18, align 4
  call void @nvkm_memx_wait(ptr noundef %192, i32 noundef 6361600, i32 noundef 3, i32 noundef 0, i32 noundef 500000) #11
  %193 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = load i32, ptr %91, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 5
  %199 = load i32, ptr %198, align 4
  br label %212

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.nvkm_fb, ptr %202, i32 0, i32 1, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.nvkm_device, ptr %204, i32 0, i32 11
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 2
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr i8, ptr %206, i32 %208
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %211 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 5
  store i32 %210, ptr %211, align 4
  br label %212

212:                                              ; preds = %200, %197
  %213 = phi i32 [ %199, %197 ], [ %210, %200 ]
  %214 = and i32 %213, -132
  %215 = or i32 %214, 3
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 1
  %219 = load i8, ptr %218, align 4, !range !13
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %247, label %221

221:                                              ; preds = %217, %212
  %222 = load i32, ptr %91, align 4
  store i32 %222, ptr %193, align 4
  %223 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 5
  store i32 %215, ptr %223, align 4
  %224 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 4
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %245, label %227

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 2
  %229 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 3
  br label %230

230:                                              ; preds = %240, %227
  %231 = phi i32 [ 0, %227 ], [ %242, %240 ]
  %232 = phi i32 [ %225, %227 ], [ %243, %240 ]
  %233 = and i32 %232, 1
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = load ptr, ptr %18, align 4
  %237 = load i32, ptr %228, align 4
  %238 = add i32 %237, %231
  %239 = load i32, ptr %223, align 4
  call void @nvkm_memx_wr32(ptr noundef %236, i32 noundef %238, i32 noundef %239) #11
  br label %240

240:                                              ; preds = %235, %230
  %241 = load i32, ptr %229, align 4
  %242 = add i32 %241, %231
  %243 = lshr i32 %232, 1
  %244 = icmp ult i32 %232, 2
  br i1 %244, label %245, label %230

245:                                              ; preds = %240, %221
  %246 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 1
  store i8 0, ptr %246, align 4
  br label %247

247:                                              ; preds = %245, %217
  %248 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9
  %249 = load i32, ptr %248, align 4
  %250 = load i32, ptr %91, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  %254 = load i32, ptr %253, align 4
  br label %267

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.nvkm_fb, ptr %257, i32 0, i32 1, i32 1
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.nvkm_device, ptr %259, i32 0, i32 11
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 2
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr i8, ptr %261, i32 %263
  %265 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %266 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  store i32 %265, ptr %266, align 4
  br label %267

267:                                              ; preds = %255, %252
  %268 = phi i32 [ %254, %252 ], [ %265, %255 ]
  %269 = and i32 %268, -33
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 1
  %273 = load i8, ptr %272, align 4, !range !13
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %301, label %275

275:                                              ; preds = %271, %267
  %276 = load i32, ptr %91, align 4
  store i32 %276, ptr %248, align 4
  %277 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  store i32 %269, ptr %277, align 4
  %278 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 4
  %279 = load i32, ptr %278, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %299, label %281

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 2
  %283 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 3
  br label %284

284:                                              ; preds = %294, %281
  %285 = phi i32 [ 0, %281 ], [ %296, %294 ]
  %286 = phi i32 [ %279, %281 ], [ %297, %294 ]
  %287 = and i32 %286, 1
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %284
  %290 = load ptr, ptr %18, align 4
  %291 = load i32, ptr %282, align 4
  %292 = add i32 %291, %285
  %293 = load i32, ptr %277, align 4
  call void @nvkm_memx_wr32(ptr noundef %290, i32 noundef %292, i32 noundef %293) #11
  br label %294

294:                                              ; preds = %289, %284
  %295 = load i32, ptr %283, align 4
  %296 = add i32 %295, %285
  %297 = lshr i32 %286, 1
  %298 = icmp ult i32 %286, 2
  br i1 %298, label %299, label %284

299:                                              ; preds = %294, %275
  %300 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 1
  store i8 0, ptr %300, align 4
  br label %301

301:                                              ; preds = %299, %271
  %302 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29
  %303 = load i32, ptr %302, align 4
  %304 = load i32, ptr %91, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 5
  %308 = load i32, ptr %307, align 4
  br label %321

309:                                              ; preds = %301
  %310 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %311 = load ptr, ptr %310, align 4
  %312 = getelementptr inbounds %struct.nvkm_fb, ptr %311, i32 0, i32 1, i32 1
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.nvkm_device, ptr %313, i32 0, i32 11
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 2
  %317 = load i32, ptr %316, align 4
  %318 = getelementptr i8, ptr %315, i32 %317
  %319 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %320 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 5
  store i32 %319, ptr %320, align 4
  br label %321

321:                                              ; preds = %309, %306
  %322 = phi i32 [ %308, %306 ], [ %319, %309 ]
  %323 = and i32 %322, 2147483647
  %324 = icmp sgt i32 %322, -1
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 1
  %327 = load i8, ptr %326, align 4, !range !13
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %355, label %329

329:                                              ; preds = %325, %321
  %330 = load i32, ptr %91, align 4
  store i32 %330, ptr %302, align 4
  %331 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 5
  store i32 %323, ptr %331, align 4
  %332 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 4
  %333 = load i32, ptr %332, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %353, label %335

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 2
  %337 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 3
  br label %338

338:                                              ; preds = %348, %335
  %339 = phi i32 [ 0, %335 ], [ %350, %348 ]
  %340 = phi i32 [ %333, %335 ], [ %351, %348 ]
  %341 = and i32 %340, 1
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %348, label %343

343:                                              ; preds = %338
  %344 = load ptr, ptr %18, align 4
  %345 = load i32, ptr %336, align 4
  %346 = add i32 %345, %339
  %347 = load i32, ptr %331, align 4
  call void @nvkm_memx_wr32(ptr noundef %344, i32 noundef %346, i32 noundef %347) #11
  br label %348

348:                                              ; preds = %343, %338
  %349 = load i32, ptr %337, align 4
  %350 = add i32 %349, %339
  %351 = lshr i32 %340, 1
  %352 = icmp ult i32 %340, 2
  br i1 %352, label %353, label %338

353:                                              ; preds = %348, %329
  %354 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 1
  store i8 0, ptr %354, align 4
  br label %355

355:                                              ; preds = %353, %325
  %356 = load i32, ptr %91, align 4
  store i32 %356, ptr %89, align 4
  %357 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 2, i32 5
  store i32 0, ptr %357, align 4
  %358 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 2, i32 4
  %359 = load i32, ptr %358, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %379, label %361

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 2, i32 2
  %363 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 2, i32 3
  br label %364

364:                                              ; preds = %374, %361
  %365 = phi i32 [ 0, %361 ], [ %376, %374 ]
  %366 = phi i32 [ %359, %361 ], [ %377, %374 ]
  %367 = and i32 %366, 1
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %364
  %370 = load ptr, ptr %18, align 4
  %371 = load i32, ptr %362, align 4
  %372 = add i32 %371, %365
  %373 = load i32, ptr %357, align 4
  call void @nvkm_memx_wr32(ptr noundef %370, i32 noundef %372, i32 noundef %373) #11
  br label %374

374:                                              ; preds = %369, %364
  %375 = load i32, ptr %363, align 4
  %376 = add i32 %375, %365
  %377 = lshr i32 %366, 1
  %378 = icmp ult i32 %366, 2
  br i1 %378, label %379, label %364

379:                                              ; preds = %374, %355
  %380 = load ptr, ptr %18, align 4
  call void @nvkm_memx_train(ptr noundef %380) #11
  %381 = load i32, ptr %302, align 4
  %382 = load i32, ptr %91, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %387

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 5
  %386 = load i32, ptr %385, align 4
  br label %399

387:                                              ; preds = %379
  %388 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %389 = load ptr, ptr %388, align 4
  %390 = getelementptr inbounds %struct.nvkm_fb, ptr %389, i32 0, i32 1, i32 1
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.nvkm_device, ptr %391, i32 0, i32 11
  %393 = load ptr, ptr %392, align 4
  %394 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 2
  %395 = load i32, ptr %394, align 4
  %396 = getelementptr i8, ptr %393, i32 %395
  %397 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %396) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %398 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 5
  store i32 %397, ptr %398, align 4
  br label %399

399:                                              ; preds = %387, %384
  %400 = phi i32 [ %386, %384 ], [ %397, %387 ]
  %401 = or i32 %400, -2147483648
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %407

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 1
  %405 = load i8, ptr %404, align 4, !range !13
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %433, label %407

407:                                              ; preds = %403, %399
  %408 = load i32, ptr %91, align 4
  store i32 %408, ptr %302, align 4
  %409 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 5
  store i32 %401, ptr %409, align 4
  %410 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 4
  %411 = load i32, ptr %410, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %431, label %413

413:                                              ; preds = %407
  %414 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 2
  %415 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 3
  br label %416

416:                                              ; preds = %426, %413
  %417 = phi i32 [ 0, %413 ], [ %428, %426 ]
  %418 = phi i32 [ %411, %413 ], [ %429, %426 ]
  %419 = and i32 %418, 1
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %426, label %421

421:                                              ; preds = %416
  %422 = load ptr, ptr %18, align 4
  %423 = load i32, ptr %414, align 4
  %424 = add i32 %423, %417
  %425 = load i32, ptr %409, align 4
  call void @nvkm_memx_wr32(ptr noundef %422, i32 noundef %424, i32 noundef %425) #11
  br label %426

426:                                              ; preds = %421, %416
  %427 = load i32, ptr %415, align 4
  %428 = add i32 %427, %417
  %429 = lshr i32 %418, 1
  %430 = icmp ult i32 %418, 2
  br i1 %430, label %431, label %416

431:                                              ; preds = %426, %407
  %432 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29, i32 1
  store i8 0, ptr %432, align 4
  br label %433

433:                                              ; preds = %431, %403
  %434 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 17
  %435 = load i32, ptr %91, align 4
  store i32 %435, ptr %434, align 4
  %436 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 17, i32 5
  store i32 0, ptr %436, align 4
  %437 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 17, i32 4
  %438 = load i32, ptr %437, align 4
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %460, label %440

440:                                              ; preds = %433
  %441 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 17, i32 2
  %442 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 17, i32 3
  br label %443

443:                                              ; preds = %453, %440
  %444 = phi i32 [ 0, %440 ], [ %455, %453 ]
  %445 = phi i32 [ %438, %440 ], [ %456, %453 ]
  %446 = and i32 %445, 1
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %453, label %448

448:                                              ; preds = %443
  %449 = load ptr, ptr %18, align 4
  %450 = load i32, ptr %441, align 4
  %451 = add i32 %450, %444
  %452 = load i32, ptr %436, align 4
  call void @nvkm_memx_wr32(ptr noundef %449, i32 noundef %451, i32 noundef %452) #11
  br label %453

453:                                              ; preds = %448, %443
  %454 = load i32, ptr %442, align 4
  %455 = add i32 %454, %444
  %456 = lshr i32 %445, 1
  %457 = icmp ult i32 %445, 2
  br i1 %457, label %458, label %443

458:                                              ; preds = %453
  %459 = load i32, ptr %91, align 4
  br label %460

460:                                              ; preds = %458, %433
  %461 = phi i32 [ %459, %458 ], [ %435, %433 ]
  %462 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 24
  %463 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 1
  %464 = load i32, ptr %463, align 4
  store i32 %461, ptr %462, align 4
  %465 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 24, i32 5
  store i32 %464, ptr %465, align 4
  %466 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 24, i32 4
  %467 = load i32, ptr %466, align 4
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %489, label %469

469:                                              ; preds = %460
  %470 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 24, i32 2
  %471 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 24, i32 3
  br label %472

472:                                              ; preds = %482, %469
  %473 = phi i32 [ 0, %469 ], [ %484, %482 ]
  %474 = phi i32 [ %467, %469 ], [ %485, %482 ]
  %475 = and i32 %474, 1
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %482, label %477

477:                                              ; preds = %472
  %478 = load ptr, ptr %18, align 4
  %479 = load i32, ptr %470, align 4
  %480 = add i32 %479, %473
  %481 = load i32, ptr %465, align 4
  call void @nvkm_memx_wr32(ptr noundef %478, i32 noundef %480, i32 noundef %481) #11
  br label %482

482:                                              ; preds = %477, %472
  %483 = load i32, ptr %471, align 4
  %484 = add i32 %483, %473
  %485 = lshr i32 %474, 1
  %486 = icmp ult i32 %474, 2
  br i1 %486, label %487, label %472

487:                                              ; preds = %482
  %488 = load i32, ptr %91, align 4
  br label %489

489:                                              ; preds = %487, %460
  %490 = phi i32 [ %488, %487 ], [ %461, %460 ]
  %491 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 33
  %492 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 2
  %493 = load i32, ptr %492, align 4
  store i32 %490, ptr %491, align 4
  %494 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 33, i32 5
  store i32 %493, ptr %494, align 4
  %495 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 33, i32 4
  %496 = load i32, ptr %495, align 4
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %518, label %498

498:                                              ; preds = %489
  %499 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 33, i32 2
  %500 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 33, i32 3
  br label %501

501:                                              ; preds = %511, %498
  %502 = phi i32 [ 0, %498 ], [ %513, %511 ]
  %503 = phi i32 [ %496, %498 ], [ %514, %511 ]
  %504 = and i32 %503, 1
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %511, label %506

506:                                              ; preds = %501
  %507 = load ptr, ptr %18, align 4
  %508 = load i32, ptr %499, align 4
  %509 = add i32 %508, %502
  %510 = load i32, ptr %494, align 4
  call void @nvkm_memx_wr32(ptr noundef %507, i32 noundef %509, i32 noundef %510) #11
  br label %511

511:                                              ; preds = %506, %501
  %512 = load i32, ptr %500, align 4
  %513 = add i32 %512, %502
  %514 = lshr i32 %503, 1
  %515 = icmp ult i32 %503, 2
  br i1 %515, label %516, label %501

516:                                              ; preds = %511
  %517 = load i32, ptr %91, align 4
  br label %518

518:                                              ; preds = %516, %489
  %519 = phi i32 [ %517, %516 ], [ %490, %489 ]
  %520 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 34
  %521 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 3
  %522 = load i32, ptr %521, align 4
  store i32 %519, ptr %520, align 4
  %523 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 34, i32 5
  store i32 %522, ptr %523, align 4
  %524 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 34, i32 4
  %525 = load i32, ptr %524, align 4
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %547, label %527

527:                                              ; preds = %518
  %528 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 34, i32 2
  %529 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 34, i32 3
  br label %530

530:                                              ; preds = %540, %527
  %531 = phi i32 [ 0, %527 ], [ %542, %540 ]
  %532 = phi i32 [ %525, %527 ], [ %543, %540 ]
  %533 = and i32 %532, 1
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %540, label %535

535:                                              ; preds = %530
  %536 = load ptr, ptr %18, align 4
  %537 = load i32, ptr %528, align 4
  %538 = add i32 %537, %531
  %539 = load i32, ptr %523, align 4
  call void @nvkm_memx_wr32(ptr noundef %536, i32 noundef %538, i32 noundef %539) #11
  br label %540

540:                                              ; preds = %535, %530
  %541 = load i32, ptr %529, align 4
  %542 = add i32 %541, %531
  %543 = lshr i32 %532, 1
  %544 = icmp ult i32 %532, 2
  br i1 %544, label %545, label %530

545:                                              ; preds = %540
  %546 = load i32, ptr %91, align 4
  br label %547

547:                                              ; preds = %545, %518
  %548 = phi i32 [ %546, %545 ], [ %519, %518 ]
  %549 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 1
  store i8 1, ptr %549, align 4
  %550 = load i32, ptr %248, align 4
  %551 = icmp eq i32 %550, %548
  br i1 %551, label %552, label %555

552:                                              ; preds = %547
  %553 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  %554 = load i32, ptr %553, align 4
  br label %567

555:                                              ; preds = %547
  %556 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %557 = load ptr, ptr %556, align 4
  %558 = getelementptr inbounds %struct.nvkm_fb, ptr %557, i32 0, i32 1, i32 1
  %559 = load ptr, ptr %558, align 4
  %560 = getelementptr inbounds %struct.nvkm_device, ptr %559, i32 0, i32 11
  %561 = load ptr, ptr %560, align 4
  %562 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 2
  %563 = load i32, ptr %562, align 4
  %564 = getelementptr i8, ptr %561, i32 %563
  %565 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %564) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %566 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  store i32 %565, ptr %566, align 4
  br label %567

567:                                              ; preds = %555, %552
  %568 = phi i32 [ %554, %552 ], [ %565, %555 ]
  %569 = or i32 %568, 32
  %570 = icmp eq i32 %568, %569
  br i1 %570, label %571, label %574

571:                                              ; preds = %567
  %572 = load i8, ptr %549, align 4, !range !13
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %599, label %574

574:                                              ; preds = %571, %567
  %575 = load i32, ptr %91, align 4
  store i32 %575, ptr %248, align 4
  %576 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 5
  store i32 %569, ptr %576, align 4
  %577 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 4
  %578 = load i32, ptr %577, align 4
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %598, label %580

580:                                              ; preds = %574
  %581 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 2
  %582 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9, i32 3
  br label %583

583:                                              ; preds = %593, %580
  %584 = phi i32 [ 0, %580 ], [ %595, %593 ]
  %585 = phi i32 [ %578, %580 ], [ %596, %593 ]
  %586 = and i32 %585, 1
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %593, label %588

588:                                              ; preds = %583
  %589 = load ptr, ptr %18, align 4
  %590 = load i32, ptr %581, align 4
  %591 = add i32 %590, %584
  %592 = load i32, ptr %576, align 4
  call void @nvkm_memx_wr32(ptr noundef %589, i32 noundef %591, i32 noundef %592) #11
  br label %593

593:                                              ; preds = %588, %583
  %594 = load i32, ptr %582, align 4
  %595 = add i32 %594, %584
  %596 = lshr i32 %585, 1
  %597 = icmp ult i32 %585, 2
  br i1 %597, label %598, label %583

598:                                              ; preds = %593, %574
  store i8 0, ptr %549, align 4
  br label %599

599:                                              ; preds = %598, %571
  %600 = load ptr, ptr %18, align 4
  call void @nvkm_memx_nsec(ptr noundef %600, i32 noundef 1000) #11
  %601 = load i32, ptr %91, align 4
  store i32 %601, ptr %89, align 4
  store i32 %112, ptr %357, align 4
  %602 = load i32, ptr %358, align 4
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %624, label %604

604:                                              ; preds = %599
  %605 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 2, i32 2
  %606 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 2, i32 3
  br label %607

607:                                              ; preds = %617, %604
  %608 = phi i32 [ 0, %604 ], [ %619, %617 ]
  %609 = phi i32 [ %602, %604 ], [ %620, %617 ]
  %610 = and i32 %609, 1
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %617, label %612

612:                                              ; preds = %607
  %613 = load ptr, ptr %18, align 4
  %614 = load i32, ptr %605, align 4
  %615 = add i32 %614, %608
  %616 = load i32, ptr %357, align 4
  call void @nvkm_memx_wr32(ptr noundef %613, i32 noundef %615, i32 noundef %616) #11
  br label %617

617:                                              ; preds = %612, %607
  %618 = load i32, ptr %606, align 4
  %619 = add i32 %618, %608
  %620 = lshr i32 %609, 1
  %621 = icmp ult i32 %609, 2
  br i1 %621, label %622, label %607

622:                                              ; preds = %617
  %623 = load i32, ptr %91, align 4
  br label %624

624:                                              ; preds = %622, %599
  %625 = phi i32 [ %623, %622 ], [ %601, %599 ]
  %626 = load i32, ptr %193, align 4
  %627 = icmp eq i32 %626, %625
  br i1 %627, label %628, label %631

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 5
  %630 = load i32, ptr %629, align 4
  br label %643

631:                                              ; preds = %624
  %632 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %633 = load ptr, ptr %632, align 4
  %634 = getelementptr inbounds %struct.nvkm_fb, ptr %633, i32 0, i32 1, i32 1
  %635 = load ptr, ptr %634, align 4
  %636 = getelementptr inbounds %struct.nvkm_device, ptr %635, i32 0, i32 11
  %637 = load ptr, ptr %636, align 4
  %638 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 2
  %639 = load i32, ptr %638, align 4
  %640 = getelementptr i8, ptr %637, i32 %639
  %641 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %640) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %642 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 5
  store i32 %641, ptr %642, align 4
  br label %643

643:                                              ; preds = %631, %628
  %644 = phi i32 [ %630, %628 ], [ %641, %631 ]
  %645 = and i32 %644, -132
  %646 = or i32 %645, 128
  %647 = icmp eq i32 %644, %646
  br i1 %647, label %648, label %652

648:                                              ; preds = %643
  %649 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 1
  %650 = load i8, ptr %649, align 4, !range !13
  %651 = icmp eq i8 %650, 0
  br i1 %651, label %678, label %652

652:                                              ; preds = %648, %643
  %653 = load i32, ptr %91, align 4
  store i32 %653, ptr %193, align 4
  %654 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 5
  store i32 %646, ptr %654, align 4
  %655 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 4
  %656 = load i32, ptr %655, align 4
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %676, label %658

658:                                              ; preds = %652
  %659 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 2
  %660 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 3
  br label %661

661:                                              ; preds = %671, %658
  %662 = phi i32 [ 0, %658 ], [ %673, %671 ]
  %663 = phi i32 [ %656, %658 ], [ %674, %671 ]
  %664 = and i32 %663, 1
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %671, label %666

666:                                              ; preds = %661
  %667 = load ptr, ptr %18, align 4
  %668 = load i32, ptr %659, align 4
  %669 = add i32 %668, %662
  %670 = load i32, ptr %654, align 4
  call void @nvkm_memx_wr32(ptr noundef %667, i32 noundef %669, i32 noundef %670) #11
  br label %671

671:                                              ; preds = %666, %661
  %672 = load i32, ptr %660, align 4
  %673 = add i32 %672, %662
  %674 = lshr i32 %663, 1
  %675 = icmp ult i32 %663, 2
  br i1 %675, label %676, label %661

676:                                              ; preds = %671, %652
  %677 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 1, i32 1
  store i8 0, ptr %677, align 4
  br label %678

678:                                              ; preds = %676, %648
  %679 = load i32, ptr %91, align 4
  store i32 %679, ptr %166, align 4
  store i32 13104, ptr %168, align 4
  %680 = load i32, ptr %169, align 4
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %702, label %682

682:                                              ; preds = %678
  %683 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 35, i32 2
  %684 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 35, i32 3
  br label %685

685:                                              ; preds = %695, %682
  %686 = phi i32 [ 0, %682 ], [ %697, %695 ]
  %687 = phi i32 [ %680, %682 ], [ %698, %695 ]
  %688 = and i32 %687, 1
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %695, label %690

690:                                              ; preds = %685
  %691 = load ptr, ptr %18, align 4
  %692 = load i32, ptr %683, align 4
  %693 = add i32 %692, %686
  %694 = load i32, ptr %168, align 4
  call void @nvkm_memx_wr32(ptr noundef %691, i32 noundef %693, i32 noundef %694) #11
  br label %695

695:                                              ; preds = %690, %685
  %696 = load i32, ptr %684, align 4
  %697 = add i32 %696, %686
  %698 = lshr i32 %687, 1
  %699 = icmp ult i32 %687, 2
  br i1 %699, label %700, label %685

700:                                              ; preds = %695
  %701 = load i32, ptr %91, align 4
  br label %702

702:                                              ; preds = %700, %678
  %703 = phi i32 [ %701, %700 ], [ %679, %678 ]
  %704 = load i32, ptr %113, align 4
  %705 = icmp eq i32 %704, %703
  br i1 %705, label %706, label %709

706:                                              ; preds = %702
  %707 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 5
  %708 = load i32, ptr %707, align 4
  br label %721

709:                                              ; preds = %702
  %710 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %711 = load ptr, ptr %710, align 4
  %712 = getelementptr inbounds %struct.nvkm_fb, ptr %711, i32 0, i32 1, i32 1
  %713 = load ptr, ptr %712, align 4
  %714 = getelementptr inbounds %struct.nvkm_device, ptr %713, i32 0, i32 11
  %715 = load ptr, ptr %714, align 4
  %716 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 2
  %717 = load i32, ptr %716, align 4
  %718 = getelementptr i8, ptr %715, i32 %717
  %719 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %718) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %720 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 5
  store i32 %719, ptr %720, align 4
  br label %721

721:                                              ; preds = %709, %706
  %722 = phi i32 [ %708, %706 ], [ %719, %709 ]
  %723 = or i32 %722, 2048
  %724 = icmp eq i32 %722, %723
  br i1 %724, label %725, label %729

725:                                              ; preds = %721
  %726 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 1
  %727 = load i8, ptr %726, align 4, !range !13
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %755, label %729

729:                                              ; preds = %725, %721
  %730 = load i32, ptr %91, align 4
  store i32 %730, ptr %113, align 4
  %731 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 5
  store i32 %723, ptr %731, align 4
  %732 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 4
  %733 = load i32, ptr %732, align 4
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %753, label %735

735:                                              ; preds = %729
  %736 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 2
  %737 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 3
  br label %738

738:                                              ; preds = %748, %735
  %739 = phi i32 [ 0, %735 ], [ %750, %748 ]
  %740 = phi i32 [ %733, %735 ], [ %751, %748 ]
  %741 = and i32 %740, 1
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %748, label %743

743:                                              ; preds = %738
  %744 = load ptr, ptr %18, align 4
  %745 = load i32, ptr %736, align 4
  %746 = add i32 %745, %739
  %747 = load i32, ptr %731, align 4
  call void @nvkm_memx_wr32(ptr noundef %744, i32 noundef %746, i32 noundef %747) #11
  br label %748

748:                                              ; preds = %743, %738
  %749 = load i32, ptr %737, align 4
  %750 = add i32 %749, %739
  %751 = lshr i32 %740, 1
  %752 = icmp ult i32 %740, 2
  br i1 %752, label %753, label %738

753:                                              ; preds = %748, %729
  %754 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10, i32 1
  store i8 0, ptr %754, align 4
  br label %755

755:                                              ; preds = %753, %725
  %756 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %757 = load ptr, ptr %756, align 4
  %758 = icmp eq ptr %757, null
  br i1 %758, label %761, label %759

759:                                              ; preds = %755
  %760 = call i32 @nvkm_memx_fini(ptr noundef %18, i1 noundef zeroext true) #11
  store ptr null, ptr %756, align 4
  br label %761

761:                                              ; preds = %759, %755
  %762 = load ptr, ptr %0, align 8
  %763 = getelementptr inbounds %struct.nvkm_ram_func, ptr %762, i32 0, i32 6
  %764 = load ptr, ptr %763, align 4
  %765 = call i32 %764(ptr noundef %0, i32 noundef %53) #11
  %766 = load ptr, ptr %756, align 4
  %767 = icmp eq ptr %766, null
  br i1 %767, label %770, label %768

768:                                              ; preds = %761
  %769 = call i32 @nvkm_memx_fini(ptr noundef %18, i1 noundef zeroext true) #11
  store ptr null, ptr %756, align 4
  br label %770

770:                                              ; preds = %768, %761
  %771 = load ptr, ptr %66, align 4
  %772 = getelementptr i8, ptr %771, i32 6382344
  %773 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %772) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %774 = or i32 %773, 16
  %775 = load ptr, ptr %66, align 4
  %776 = getelementptr i8, ptr %775, i32 6382344
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %776, i32 %774) #11, !srcloc !10
  %777 = load ptr, ptr %66, align 4
  %778 = getelementptr i8, ptr %777, i32 6384392
  %779 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %778) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %780 = or i32 %779, 16
  %781 = load ptr, ptr %66, align 4
  %782 = getelementptr i8, ptr %781, i32 6384392
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %782, i32 %780) #11, !srcloc !10
  call void @gt215_clk_post(ptr noundef %39, ptr noundef nonnull %12) #11
  %783 = load ptr, ptr %20, align 4
  %784 = getelementptr inbounds %struct.nvkm_fb, ptr %783, i32 0, i32 1, i32 1
  %785 = load ptr, ptr %784, align 4
  %786 = getelementptr inbounds %struct.nvkm_device, ptr %785, i32 0, i32 39
  %787 = load ptr, ptr %786, align 8
  %788 = call i32 @nvkm_memx_train_result(ptr noundef %787, ptr noundef nonnull %45, i32 noundef 64) #11
  %789 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 5
  %790 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 4
  br label %791

791:                                              ; preds = %801, %770
  %792 = phi i32 [ 0, %770 ], [ %802, %801 ]
  %793 = load i32, ptr %789, align 4
  %794 = icmp ugt i32 %793, 3
  br i1 %794, label %795, label %801

795:                                              ; preds = %791
  %796 = load ptr, ptr %23, align 4
  %797 = getelementptr inbounds %struct.nvkm_device, ptr %796, i32 0, i32 2
  %798 = load ptr, ptr %797, align 8
  %799 = getelementptr i32, ptr %45, i32 %792
  %800 = load i32, ptr %799, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %798, ptr noundef nonnull @.str.6, ptr noundef %790, i32 noundef %800) #12
  br label %801

801:                                              ; preds = %795, %791
  %802 = add nuw nsw i32 %792, 1
  %803 = icmp eq i32 %802, 64
  br i1 %803, label %804, label %791

804:                                              ; preds = %801
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4
  br label %805

805:                                              ; preds = %835, %804
  %806 = phi i32 [ 0, %804 ], [ %848, %835 ]
  %807 = shl i32 257, %806
  br label %808

808:                                              ; preds = %817, %805
  %809 = phi i32 [ 0, %805 ], [ %816, %817 ]
  %810 = getelementptr i32, ptr %45, i32 %809
  %811 = load i32, ptr %810, align 4
  %812 = icmp sgt i32 %811, -1
  %813 = and i32 %811, %807
  %814 = icmp eq i32 %813, 0
  %815 = select i1 %812, i1 true, i1 %814
  %816 = add nuw i32 %809, 1
  br i1 %815, label %817, label %819

817:                                              ; preds = %808
  %818 = icmp eq i32 %816, 64
  br i1 %818, label %932, label %808

819:                                              ; preds = %808
  %820 = icmp slt i32 %816, 64
  br i1 %820, label %821, label %835

821:                                              ; preds = %819
  %822 = getelementptr i32, ptr %45, i32 %816
  %823 = load i32, ptr %822, align 4
  %824 = and i32 %823, %807
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %835, label %831

826:                                              ; preds = %831
  %827 = getelementptr i32, ptr %45, i32 %833
  %828 = load i32, ptr %827, align 4
  %829 = and i32 %828, %807
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %835, label %831

831:                                              ; preds = %826, %821
  %832 = phi i32 [ %833, %826 ], [ %816, %821 ]
  %833 = add nuw nsw i32 %832, 1
  %834 = icmp eq i32 %833, 64
  br i1 %834, label %835, label %826

835:                                              ; preds = %831, %826, %821, %819
  %836 = phi i32 [ %816, %819 ], [ %809, %821 ], [ 64, %831 ], [ %832, %826 ]
  %837 = sub i32 %836, %809
  %838 = lshr i32 %837, 1
  %839 = add nuw i32 %838, %809
  %840 = trunc i32 %839 to i8
  %841 = getelementptr [8 x i8], ptr %3, i32 0, i32 %806
  %842 = lshr i32 %839, 4
  %843 = and i32 %842, 15
  %844 = getelementptr [4 x i8], ptr %4, i32 0, i32 %843
  %845 = load i8, ptr %844, align 1
  %846 = add i8 %845, 1
  store i8 %846, ptr %844, align 1
  %847 = add i8 %840, 48
  store i8 %847, ptr %841, align 1
  %848 = add nuw nsw i32 %806, 1
  %849 = icmp eq i32 %848, 8
  br i1 %849, label %850, label %805

850:                                              ; preds = %835
  %851 = load i8, ptr %4, align 4
  %852 = icmp eq i8 %851, 0
  %853 = select i1 %852, i32 0, i32 3
  %854 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %855 = load i8, ptr %854, align 1
  %856 = icmp ugt i8 %855, %851
  %857 = call i8 @llvm.umax.i8(i8 %855, i8 %851) #11
  %858 = select i1 %856, i32 4, i32 %853
  %859 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  %860 = load i8, ptr %859, align 2
  %861 = icmp ugt i8 %860, %857
  %862 = call i8 @llvm.umax.i8(i8 %860, i8 %857) #11
  %863 = select i1 %861, i32 5, i32 %858
  %864 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  %865 = load i8, ptr %864, align 1
  %866 = icmp ugt i8 %865, %862
  %867 = select i1 %866, i32 6, i32 %863
  %868 = shl nuw nsw i32 %867, 4
  %869 = or i32 %868, 15
  %870 = load i8, ptr %3, align 8
  %871 = zext i8 %870 to i32
  %872 = call i32 @llvm.umax.i32(i32 %868, i32 %871) #11
  %873 = call i32 @llvm.umin.i32(i32 %872, i32 %869) #11
  %874 = and i32 %873, 15
  %875 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  %876 = load i8, ptr %875, align 1
  %877 = zext i8 %876 to i32
  %878 = call i32 @llvm.umax.i32(i32 %868, i32 %877) #11
  %879 = call i32 @llvm.umin.i32(i32 %878, i32 %869) #11
  %880 = shl nuw nsw i32 %879, 4
  %881 = and i32 %880, 240
  %882 = or i32 %881, %874
  %883 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  %884 = load i8, ptr %883, align 2
  %885 = zext i8 %884 to i32
  %886 = call i32 @llvm.umax.i32(i32 %868, i32 %885) #11
  %887 = call i32 @llvm.umin.i32(i32 %886, i32 %869) #11
  %888 = shl nuw nsw i32 %887, 8
  %889 = and i32 %888, 3840
  %890 = or i32 %882, %889
  %891 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  %892 = load i8, ptr %891, align 1
  %893 = zext i8 %892 to i32
  %894 = call i32 @llvm.umax.i32(i32 %868, i32 %893) #11
  %895 = call i32 @llvm.umin.i32(i32 %894, i32 %869) #11
  %896 = shl nuw nsw i32 %895, 12
  %897 = and i32 %896, 61440
  %898 = or i32 %890, %897
  %899 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  %900 = load i8, ptr %899, align 4
  %901 = zext i8 %900 to i32
  %902 = call i32 @llvm.umax.i32(i32 %868, i32 %901) #11
  %903 = call i32 @llvm.umin.i32(i32 %902, i32 %869) #11
  %904 = shl nuw nsw i32 %903, 16
  %905 = and i32 %904, 983040
  %906 = or i32 %898, %905
  %907 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 5
  %908 = load i8, ptr %907, align 1
  %909 = zext i8 %908 to i32
  %910 = call i32 @llvm.umax.i32(i32 %868, i32 %909) #11
  %911 = call i32 @llvm.umin.i32(i32 %910, i32 %869) #11
  %912 = shl nuw nsw i32 %911, 20
  %913 = and i32 %912, 15728640
  %914 = or i32 %906, %913
  %915 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 6
  %916 = load i8, ptr %915, align 2
  %917 = zext i8 %916 to i32
  %918 = call i32 @llvm.umax.i32(i32 %868, i32 %917) #11
  %919 = call i32 @llvm.umin.i32(i32 %918, i32 %869) #11
  %920 = shl nuw i32 %919, 24
  %921 = and i32 %920, 251658240
  %922 = or i32 %914, %921
  %923 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 7
  %924 = load i8, ptr %923, align 1
  %925 = zext i8 %924 to i32
  %926 = call i32 @llvm.umax.i32(i32 %868, i32 %925) #11
  %927 = call i32 @llvm.umin.i32(i32 %926, i32 %869) #11
  %928 = shl i32 %927, 28
  %929 = or i32 %922, %928
  store i32 %929, ptr %463, align 4
  %930 = mul nuw nsw i32 %867, 257
  %931 = or i32 %930, 33554432
  store i32 %931, ptr %492, align 4
  store i32 0, ptr %521, align 4
  br label %932

932:                                              ; preds = %850, %817
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %933 = load i32, ptr %789, align 4
  %934 = icmp ugt i32 %933, 3
  br i1 %934, label %935, label %942

935:                                              ; preds = %932
  %936 = load ptr, ptr %23, align 4
  %937 = getelementptr inbounds %struct.nvkm_device, ptr %936, i32 0, i32 2
  %938 = load ptr, ptr %937, align 8
  %939 = load i32, ptr %463, align 4
  %940 = load i32, ptr %492, align 4
  %941 = load i32, ptr %521, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %938, ptr noundef nonnull @.str.7, ptr noundef %790, i32 noundef %939, i32 noundef %940, i32 noundef %941) #12
  br label %942

942:                                              ; preds = %935, %932
  call void @kfree(ptr noundef nonnull %45) #11
  store i32 4, ptr %19, align 4
  br label %947

943:                                              ; preds = %56, %52
  %944 = phi i32 [ %54, %52 ], [ %63, %56 ]
  %945 = icmp eq i32 %944, -16
  %946 = select i1 %945, ptr null, ptr %12
  store i32 1, ptr %19, align 4
  call void @gt215_clk_post(ptr noundef %39, ptr noundef %946) #11
  call void @kfree(ptr noundef nonnull %45) #11
  br label %947

947:                                              ; preds = %943, %942, %51, %43, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br label %948

948:                                              ; preds = %947, %2
  %949 = udiv i32 %1, 1000
  %950 = trunc i32 %949 to i16
  %951 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1
  %952 = call i32 @nvbios_rammapEm(ptr noundef %26, i16 noundef zeroext %950, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %951) #11
  %953 = icmp eq i32 %952, 0
  %954 = load i8, ptr %14, align 1
  %955 = icmp ne i8 %954, 16
  %956 = select i1 %953, i1 true, i1 %955
  %957 = load i8, ptr %15, align 1
  %958 = icmp ult i8 %957, 5
  %959 = select i1 %956, i1 true, i1 %958
  br i1 %959, label %960, label %969

960:                                              ; preds = %948
  %961 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 5
  %962 = load i32, ptr %961, align 4
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %1774, label %964

964:                                              ; preds = %960
  %965 = load ptr, ptr %23, align 4
  %966 = getelementptr inbounds %struct.nvkm_device, ptr %965, i32 0, i32 2
  %967 = load ptr, ptr %966, align 8
  %968 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %967, ptr noundef nonnull @.str, ptr noundef %968) #12
  br label %1774

969:                                              ; preds = %948
  %970 = call zeroext i8 @nvbios_ramcfg_index(ptr noundef %22) #11
  %971 = load i8, ptr %16, align 1
  %972 = icmp ult i8 %970, %971
  br i1 %972, label %982, label %973

973:                                              ; preds = %969
  %974 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 5
  %975 = load i32, ptr %974, align 4
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %1774, label %977

977:                                              ; preds = %973
  %978 = load ptr, ptr %23, align 4
  %979 = getelementptr inbounds %struct.nvkm_device, ptr %978, i32 0, i32 2
  %980 = load ptr, ptr %979, align 8
  %981 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %980, ptr noundef nonnull @.str.1, ptr noundef %981) #12
  br label %1774

982:                                              ; preds = %969
  %983 = zext i8 %970 to i32
  %984 = load i8, ptr %14, align 1
  %985 = load i8, ptr %15, align 1
  %986 = load i8, ptr %17, align 1
  %987 = call i32 @nvbios_rammapSp(ptr noundef %26, i32 noundef %952, i8 noundef zeroext %984, i8 noundef zeroext %985, i8 noundef zeroext %971, i8 noundef zeroext %986, i32 noundef %983, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %951) #11
  %988 = icmp eq i32 %987, 0
  %989 = load i8, ptr %14, align 1
  %990 = icmp ne i8 %989, 16
  %991 = select i1 %988, i1 true, i1 %990
  %992 = load i8, ptr %15, align 1
  %993 = icmp ult i8 %992, 9
  %994 = select i1 %991, i1 true, i1 %993
  br i1 %994, label %995, label %1004

995:                                              ; preds = %982
  %996 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 5
  %997 = load i32, ptr %996, align 4
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1774, label %999

999:                                              ; preds = %995
  %1000 = load ptr, ptr %23, align 4
  %1001 = getelementptr inbounds %struct.nvkm_device, ptr %1000, i32 0, i32 2
  %1002 = load ptr, ptr %1001, align 8
  %1003 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1002, ptr noundef nonnull @.str.2, ptr noundef %1003) #12
  br label %1774

1004:                                             ; preds = %982
  %1005 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 7
  %1006 = load i32, ptr %1005, align 4
  %1007 = icmp eq i32 %1006, 255
  br i1 %1007, label %1026, label %1008

1008:                                             ; preds = %1004
  %1009 = call i32 @nvbios_timingEp(ptr noundef %26, i32 noundef %1006, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %951) #11
  %1010 = icmp eq i32 %1009, 0
  %1011 = load i8, ptr %14, align 1
  %1012 = icmp ne i8 %1011, 16
  %1013 = select i1 %1010, i1 true, i1 %1012
  %1014 = load i8, ptr %15, align 1
  %1015 = icmp ult i8 %1014, 23
  %1016 = select i1 %1013, i1 true, i1 %1015
  br i1 %1016, label %1017, label %1026

1017:                                             ; preds = %1008
  %1018 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 5
  %1019 = load i32, ptr %1018, align 4
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1774, label %1021

1021:                                             ; preds = %1017
  %1022 = load ptr, ptr %23, align 4
  %1023 = getelementptr inbounds %struct.nvkm_device, ptr %1022, i32 0, i32 2
  %1024 = load ptr, ptr %1023, align 8
  %1025 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1024, ptr noundef nonnull @.str.3, ptr noundef %1025) #12
  br label %1774

1026:                                             ; preds = %1008, %1004
  %1027 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 43
  %1028 = load ptr, ptr %1027, align 8
  %1029 = call i32 @gt215_pll_info(ptr noundef %1028, i32 noundef 18, i32 noundef 16384, i32 noundef %1, ptr noundef nonnull %13) #11
  %1030 = icmp slt i32 %1029, 0
  br i1 %1030, label %1031, label %1040

1031:                                             ; preds = %1026
  %1032 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 5
  %1033 = load i32, ptr %1032, align 4
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1774, label %1035

1035:                                             ; preds = %1031
  %1036 = load ptr, ptr %23, align 4
  %1037 = getelementptr inbounds %struct.nvkm_device, ptr %1036, i32 0, i32 2
  %1038 = load ptr, ptr %1037, align 8
  %1039 = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1038, ptr noundef nonnull @.str.4, ptr noundef %1039) #12
  br label %1774

1040:                                             ; preds = %1026
  %1041 = load ptr, ptr %20, align 4
  %1042 = getelementptr inbounds %struct.nvkm_fb, ptr %1041, i32 0, i32 1, i32 1
  %1043 = load ptr, ptr %1042, align 4
  %1044 = getelementptr inbounds %struct.nvkm_device, ptr %1043, i32 0, i32 11
  %1045 = load ptr, ptr %1044, align 4
  %1046 = getelementptr i8, ptr %1045, i32 1049128
  %1047 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1046) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1048 = load ptr, ptr %1044, align 4
  %1049 = getelementptr i8, ptr %1048, i32 1049132
  %1050 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1049) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1051 = load ptr, ptr %1044, align 4
  %1052 = getelementptr i8, ptr %1051, i32 1049148
  %1053 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1052) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1054 = load ptr, ptr %1044, align 4
  %1055 = getelementptr i8, ptr %1054, i32 1049152
  %1056 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1055) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1057 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 15
  %1058 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 15, i32 1, i32 4
  %1059 = load i64, ptr %1058, align 4
  %1060 = and i64 %1059, 16711680
  %1061 = icmp eq i64 %1060, 0
  %1062 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 2
  %1063 = load i32, ptr %1062, align 8
  %1064 = select i1 %1061, i32 %1063, i32 0
  %1065 = trunc i64 %1059 to i32
  %1066 = lshr i64 %1059, 16
  %1067 = trunc i64 %1066 to i32
  switch i32 %1064, label %1085 [
    i32 5, label %1068
    i32 8, label %1072
  ]

1068:                                             ; preds = %1040
  %1069 = load i96, ptr %1057, align 4
  %1070 = trunc i96 %1069 to i32
  %1071 = add i32 %1070, 16711680
  br label %1076

1072:                                             ; preds = %1040
  %1073 = lshr i32 %1047, 8
  %1074 = and i32 %1073, 16711680
  %1075 = add nuw nsw i32 %1074, 65536
  br label %1076

1076:                                             ; preds = %1072, %1068
  %1077 = phi i32 [ %1075, %1072 ], [ %1071, %1068 ]
  %1078 = and i32 %1077, 16711680
  %1079 = zext i32 %1078 to i64
  %1080 = and i64 %1059, -16711681
  %1081 = or i64 %1080, %1079
  store i64 %1081, ptr %1058, align 4
  %1082 = trunc i64 %1081 to i32
  %1083 = lshr i64 %1081, 16
  %1084 = trunc i64 %1083 to i32
  br label %1085

1085:                                             ; preds = %1076, %1040
  %1086 = phi i32 [ %1082, %1076 ], [ %1065, %1040 ]
  %1087 = phi i32 [ %1084, %1076 ], [ %1067, %1040 ]
  %1088 = and i32 %1050, 255
  %1089 = xor i32 %1088, -1
  %1090 = load i96, ptr %1057, align 4
  %1091 = lshr i96 %1090, 24
  %1092 = trunc i96 %1091 to i32
  %1093 = and i32 %1092, -256
  %1094 = trunc i96 %1090 to i32
  %1095 = lshr i32 %1094, 24
  %1096 = or i32 %1093, %1095
  %1097 = add i32 %1094, 1
  %1098 = lshr i32 %1086, 16
  %1099 = and i32 %1098, 255
  %1100 = add i32 %1097, %1098
  %1101 = shl i32 %1100, 24
  %1102 = lshr i32 %1086, 8
  %1103 = and i32 %1102, 255
  %1104 = call i32 @llvm.umax.i32(i32 %1103, i32 1) #11
  %1105 = shl nuw nsw i32 %1104, 16
  %1106 = or i32 %1105, %1101
  %1107 = lshr i32 %1094, 8
  %1108 = and i32 %1107, 255
  %1109 = add nuw nsw i32 %1108, 1
  %1110 = add nuw nsw i32 %1109, %1099
  %1111 = shl nuw nsw i32 %1110, 8
  %1112 = lshr i32 %1094, 16
  %1113 = and i32 %1112, 255
  %1114 = add nuw nsw i32 %1113, 5
  %1115 = sub nsw i32 %1114, %1099
  %1116 = or i32 %1111, %1115
  %1117 = or i32 %1116, %1106
  %1118 = shl i32 %1086, 8
  %1119 = add i32 %1118, -16777216
  %1120 = and i32 %1119, -16777216
  %1121 = lshr i96 %1090, 56
  %1122 = trunc i96 %1121 to i32
  %1123 = and i32 %1122, 255
  %1124 = and i32 %1122, 16777215
  %1125 = or i32 %1124, %1120
  %1126 = and i32 %1050, 16711680
  %1127 = shl i32 %1112, 24
  %1128 = add i32 %1127, 805306368
  %1129 = or i32 %1128, %1126
  %1130 = shl nuw nsw i32 %1113, 8
  %1131 = add nuw nsw i32 %1130, 2816
  %1132 = add nsw i32 %1113, -1
  %1133 = or i32 %1131, %1132
  %1134 = or i32 %1133, %1129
  %1135 = and i32 %1086, -16777216
  %1136 = and i32 %1087, 16711680
  %1137 = or i32 %1135, %1136
  %1138 = lshr i96 %1090, 80
  %1139 = trunc i96 %1138 to i32
  %1140 = and i32 %1139, 255
  %1141 = shl nuw nsw i32 %1140, 8
  %1142 = or i32 %1137, %1141
  %1143 = or i32 %1142, %1140
  %1144 = lshr i96 %1090, 8
  %1145 = trunc i96 %1144 to i32
  %1146 = and i32 %1145, -16777216
  %1147 = lshr i96 %1090, 64
  %1148 = trunc i96 %1147 to i32
  %1149 = and i32 %1148, 255
  %1150 = call i32 @llvm.umax.i32(i32 %1123, i32 %1149) #11
  %1151 = shl nuw nsw i32 %1150, 16
  %1152 = or i32 %1151, %1146
  %1153 = add nuw nsw i32 %1098, 6
  %1154 = add nuw nsw i32 %1112, 2
  %1155 = and i32 %1153, 255
  %1156 = and i32 %1154, 255
  %1157 = call i32 @llvm.umax.i32(i32 %1155, i32 %1156) #11
  %1158 = shl nuw nsw i32 %1157, 8
  %1159 = or i32 %1158, %1152
  %1160 = lshr i96 %1090, 48
  %1161 = trunc i96 %1160 to i32
  %1162 = and i32 %1161, 255
  %1163 = or i32 %1159, %1162
  %1164 = shl nuw nsw i32 %1113, 16
  %1165 = add nuw nsw i32 %1164, 5898240
  %1166 = sub nsw i32 6, %1112
  %1167 = add nsw i32 %1166, %1098
  %1168 = and i32 %1167, 255
  %1169 = icmp eq i32 %1168, 0
  %1170 = shl nuw nsw i32 %1168, 8
  %1171 = select i1 %1169, i32 256, i32 %1170
  %1172 = or i32 %1171, %1165
  %1173 = add nuw nsw i32 %1113, 80
  %1174 = sub nsw i32 %1173, %1099
  %1175 = or i32 %1172, %1174
  %1176 = and i32 %1053, -16777216
  %1177 = shl nsw i32 %1089, 16
  %1178 = and i32 %1053, 16711680
  %1179 = add nsw i32 %1178, %1177
  %1180 = and i32 %1094, 16711680
  %1181 = add nsw i32 %1179, %1180
  %1182 = or i32 %1176, %1181
  %1183 = or i32 %1182, 514
  %1184 = and i32 %1056, -256
  switch i32 %1063, label %1190 [
    i32 5, label %1185
    i32 8, label %1185
  ]

1185:                                             ; preds = %1085, %1085
  %1186 = and i32 %1056, 255
  %1187 = icmp ult i32 %1088, %1186
  %1188 = select i1 %1187, i32 0, i32 %1113
  %1189 = or i32 %1188, %1184
  br label %1190

1190:                                             ; preds = %1185, %1085
  %1191 = phi i32 [ %1184, %1085 ], [ %1189, %1185 ]
  %1192 = getelementptr inbounds %struct.nvkm_fb, ptr %1041, i32 0, i32 1, i32 5
  %1193 = load i32, ptr %1192, align 4
  %1194 = icmp ugt i32 %1193, 3
  br i1 %1194, label %1195, label %1212

1195:                                             ; preds = %1190
  %1196 = load ptr, ptr %1042, align 4
  %1197 = getelementptr inbounds %struct.nvkm_device, ptr %1196, i32 0, i32 2
  %1198 = load ptr, ptr %1197, align 8
  %1199 = getelementptr inbounds %struct.nvkm_fb, ptr %1041, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1198, ptr noundef nonnull @.str.8, ptr noundef %1199, i32 noundef %1096, i32 noundef %1117, i32 noundef %1125, i32 noundef %1134) #12
  %1200 = load i32, ptr %1192, align 4
  %1201 = icmp ugt i32 %1200, 3
  br i1 %1201, label %1202, label %1212

1202:                                             ; preds = %1195
  %1203 = load ptr, ptr %1042, align 4
  %1204 = getelementptr inbounds %struct.nvkm_device, ptr %1203, i32 0, i32 2
  %1205 = load ptr, ptr %1204, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1205, ptr noundef nonnull @.str.9, ptr noundef %1199, i32 noundef %1143, i32 noundef %1163, i32 noundef %1175, i32 noundef %1183) #12
  %1206 = load i32, ptr %1192, align 4
  %1207 = icmp ugt i32 %1206, 3
  br i1 %1207, label %1208, label %1212

1208:                                             ; preds = %1202
  %1209 = load ptr, ptr %1042, align 4
  %1210 = getelementptr inbounds %struct.nvkm_device, ptr %1209, i32 0, i32 2
  %1211 = load ptr, ptr %1210, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1211, ptr noundef nonnull @.str.10, ptr noundef %1199, i32 noundef %1191) #12
  br label %1212

1212:                                             ; preds = %1208, %1202, %1195, %1190
  %1213 = load ptr, ptr %20, align 4
  %1214 = getelementptr inbounds %struct.nvkm_fb, ptr %1213, i32 0, i32 1, i32 1
  %1215 = load ptr, ptr %1214, align 4
  %1216 = getelementptr inbounds %struct.nvkm_device, ptr %1215, i32 0, i32 39
  %1217 = load ptr, ptr %1216, align 8
  %1218 = call i32 @nvkm_memx_init(ptr noundef %1217, ptr noundef %18) #11
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1220, label %1774

1220:                                             ; preds = %1212
  %1221 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 2
  %1222 = load i32, ptr %1221, align 4
  %1223 = add i32 %1222, 1
  store i32 %1223, ptr %1221, align 4
  %1224 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %1213, ptr %1224, align 4
  %1225 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36
  %1226 = load i32, ptr %1225, align 4
  %1227 = icmp eq i32 %1226, %1223
  br i1 %1227, label %1228, label %1231

1228:                                             ; preds = %1220
  %1229 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 0, i32 5
  %1230 = load i32, ptr %1229, align 4
  br label %1241

1231:                                             ; preds = %1220
  %1232 = load ptr, ptr %1214, align 4
  %1233 = getelementptr inbounds %struct.nvkm_device, ptr %1232, i32 0, i32 11
  %1234 = load ptr, ptr %1233, align 4
  %1235 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 0, i32 2
  %1236 = load i32, ptr %1235, align 4
  %1237 = getelementptr i8, ptr %1234, i32 %1236
  %1238 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1237) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1239 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 0, i32 5
  store i32 %1238, ptr %1239, align 4
  %1240 = load i32, ptr %1221, align 4
  br label %1241

1241:                                             ; preds = %1231, %1228
  %1242 = phi i32 [ %1223, %1228 ], [ %1240, %1231 ]
  %1243 = phi i32 [ %1230, %1228 ], [ %1238, %1231 ]
  %1244 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 11
  store i32 %1243, ptr %1244, align 4
  %1245 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 1
  %1246 = load i32, ptr %1245, align 4
  %1247 = icmp eq i32 %1246, %1242
  br i1 %1247, label %1248, label %1251

1248:                                             ; preds = %1241
  %1249 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 1, i32 5
  %1250 = load i32, ptr %1249, align 4
  br label %1263

1251:                                             ; preds = %1241
  %1252 = load ptr, ptr %1224, align 4
  %1253 = getelementptr inbounds %struct.nvkm_fb, ptr %1252, i32 0, i32 1, i32 1
  %1254 = load ptr, ptr %1253, align 4
  %1255 = getelementptr inbounds %struct.nvkm_device, ptr %1254, i32 0, i32 11
  %1256 = load ptr, ptr %1255, align 4
  %1257 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 1, i32 2
  %1258 = load i32, ptr %1257, align 4
  %1259 = getelementptr i8, ptr %1256, i32 %1258
  %1260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1259) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1261 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 1, i32 5
  store i32 %1260, ptr %1261, align 4
  %1262 = load i32, ptr %1221, align 4
  br label %1263

1263:                                             ; preds = %1251, %1248
  %1264 = phi i32 [ %1242, %1248 ], [ %1262, %1251 ]
  %1265 = phi i32 [ %1250, %1248 ], [ %1260, %1251 ]
  %1266 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  store i32 %1265, ptr %1266, align 4
  %1267 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 2
  %1268 = load i32, ptr %1267, align 4
  %1269 = icmp eq i32 %1268, %1264
  br i1 %1269, label %1270, label %1273

1270:                                             ; preds = %1263
  %1271 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 2, i32 5
  %1272 = load i32, ptr %1271, align 4
  br label %1284

1273:                                             ; preds = %1263
  %1274 = load ptr, ptr %1224, align 4
  %1275 = getelementptr inbounds %struct.nvkm_fb, ptr %1274, i32 0, i32 1, i32 1
  %1276 = load ptr, ptr %1275, align 4
  %1277 = getelementptr inbounds %struct.nvkm_device, ptr %1276, i32 0, i32 11
  %1278 = load ptr, ptr %1277, align 4
  %1279 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 2, i32 2
  %1280 = load i32, ptr %1279, align 4
  %1281 = getelementptr i8, ptr %1278, i32 %1280
  %1282 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1281) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1283 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 2, i32 5
  store i32 %1282, ptr %1283, align 4
  br label %1284

1284:                                             ; preds = %1273, %1270
  %1285 = phi i32 [ %1272, %1270 ], [ %1282, %1273 ]
  %1286 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 2
  store i32 %1285, ptr %1286, align 4
  %1287 = load i32, ptr %1062, align 8
  switch i32 %1287, label %1774 [
    i32 5, label %1288
    i32 6, label %1290
    i32 8, label %1292
  ]

1288:                                             ; preds = %1284
  %1289 = call i32 @nvkm_sddr2_calc(ptr noundef %0) #11
  br label %1294

1290:                                             ; preds = %1284
  %1291 = call i32 @nvkm_sddr3_calc(ptr noundef %0) #11
  br label %1294

1292:                                             ; preds = %1284
  %1293 = call i32 @nvkm_gddr3_calc(ptr noundef %0) #11
  br label %1294

1294:                                             ; preds = %1292, %1290, %1288
  %1295 = phi i32 [ %1293, %1292 ], [ %1291, %1290 ], [ %1289, %1288 ]
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1297, label %1774

1297:                                             ; preds = %1294
  %1298 = icmp ult i32 %1, 750001
  %1299 = select i1 %1298, i32 268435456, i32 0
  %1300 = select i1 %1298, i32 572662306, i32 0
  %1301 = select i1 %1298, i32 16, i32 0
  %1302 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 8
  %1303 = load i32, ptr %1302, align 4
  %1304 = icmp eq i32 %1303, 0
  %1305 = or i32 %1299, 16384
  %1306 = select i1 %1304, i32 %1305, i32 %1299
  %1307 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 4
  %1308 = load i32, ptr %1307, align 4
  %1309 = load i32, ptr %1221, align 4
  %1310 = icmp eq i32 %1308, %1309
  br i1 %1310, label %1311, label %1314

1311:                                             ; preds = %1297
  %1312 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 4, i32 5
  %1313 = load i32, ptr %1312, align 4
  br label %1325

1314:                                             ; preds = %1297
  %1315 = load ptr, ptr %1224, align 4
  %1316 = getelementptr inbounds %struct.nvkm_fb, ptr %1315, i32 0, i32 1, i32 1
  %1317 = load ptr, ptr %1316, align 4
  %1318 = getelementptr inbounds %struct.nvkm_device, ptr %1317, i32 0, i32 11
  %1319 = load ptr, ptr %1318, align 4
  %1320 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 4, i32 2
  %1321 = load i32, ptr %1320, align 4
  %1322 = getelementptr i8, ptr %1319, i32 %1321
  %1323 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1322) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1324 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 4, i32 5
  store i32 %1323, ptr %1324, align 4
  br label %1325

1325:                                             ; preds = %1314, %1311
  %1326 = phi i32 [ %1313, %1311 ], [ %1323, %1314 ]
  %1327 = and i32 %1326, 8
  %1328 = icmp eq i32 %1327, 0
  %1329 = getelementptr inbounds %struct.gt215_clk_info, ptr %13, i32 0, i32 1
  %1330 = load i32, ptr %1329, align 4
  %1331 = icmp ne i32 %1330, 0
  %1332 = select i1 %1328, i1 %1331, i1 false
  %1333 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 11
  %1334 = load i32, ptr %1333, align 4
  %1335 = and i32 %1334, 16
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1337, label %1339

1337:                                             ; preds = %1325
  %1338 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 31
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1338, i32 noundef 1073741824, i32 noundef 1073741824)
  br label %1339

1339:                                             ; preds = %1337, %1325
  %1340 = phi i32 [ 384, %1337 ], [ 1536, %1325 ]
  %1341 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 32
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1341, i32 noundef %1340, i32 noundef 0)
  %1342 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 10
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1342, i32 noundef 2048, i32 noundef 0)
  %1343 = load i32, ptr %1329, align 4
  %1344 = icmp eq i32 %1343, 0
  %1345 = select i1 %1344, i1 true, i1 %1332
  br i1 %1345, label %1350, label %1346

1346:                                             ; preds = %1339
  %1347 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 7
  %1348 = load i32, ptr %13, align 4
  %1349 = or i32 %1348, 257
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1347, i32 noundef 4141377, i32 noundef %1349)
  call fastcc void @gt215_ram_lock_pll(ptr noundef %18, ptr noundef nonnull %13)
  br label %1350

1350:                                             ; preds = %1346, %1339
  %1351 = load ptr, ptr %18, align 4
  call void @nvkm_memx_wait_vblank(ptr noundef %1351) #11
  %1352 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 35
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1352, i32 noundef 13056)
  %1353 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 3
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1353, i32 noundef 1, i32 noundef 1)
  %1354 = load ptr, ptr %18, align 4
  call void @nvkm_memx_nsec(ptr noundef %1354, i32 noundef 10000) #11
  %1355 = load ptr, ptr %18, align 4
  call void @nvkm_memx_wait(ptr noundef %1355, i32 noundef 9476, i32 noundef 16, i32 noundef 16, i32 noundef 20000) #11
  %1356 = load ptr, ptr %18, align 4
  call void @nvkm_memx_block(ptr noundef %1356) #11
  %1357 = load ptr, ptr %18, align 4
  call void @nvkm_memx_nsec(ptr noundef %1357, i32 noundef 2000) #11
  %1358 = load i32, ptr %1333, align 4
  %1359 = and i32 %1358, 16
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1361, label %1366

1361:                                             ; preds = %1350
  %1362 = load i32, ptr %1062, align 8
  %1363 = icmp eq i32 %1362, 8
  %1364 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 31
  %1365 = select i1 %1363, i32 131072, i32 67239936
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1364, i32 noundef 67239936, i32 noundef %1365)
  br label %1366

1366:                                             ; preds = %1361, %1350
  %1367 = load i32, ptr %1302, align 4
  %1368 = load i32, ptr %1062, align 8
  %1369 = mul i32 %1368, %1367
  switch i32 %1369, label %1372 [
    i32 6, label %1370
    i32 8, label %1371
  ]

1370:                                             ; preds = %1366
  call fastcc void @nvkm_sddr3_dll_disable(ptr noundef %18, ptr noundef %1244)
  br label %1372

1371:                                             ; preds = %1366
  call fastcc void @nvkm_gddr3_dll_disable(ptr noundef %18, ptr noundef %1244)
  br label %1372

1372:                                             ; preds = %1371, %1370, %1366
  %1373 = load i96, ptr %1057, align 4
  %1374 = and i96 %1373, 2166395068749415481073467392
  %1375 = icmp eq i96 %1374, 0
  br i1 %1375, label %1377, label %1376

1376:                                             ; preds = %1372
  call fastcc void @gt215_ram_gpio(ptr noundef %18, i8 noundef zeroext 46, i32 noundef 1)
  br label %1377

1377:                                             ; preds = %1376, %1372
  %1378 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 15
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1378, i32 noundef 1)
  %1379 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 14
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1379, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1379, i32 noundef 1)
  %1380 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 11
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1380, i32 noundef 0)
  %1381 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 16
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1381, i32 noundef 1)
  %1382 = load ptr, ptr %18, align 4
  call void @nvkm_memx_nsec(ptr noundef %1382, i32 noundef 2000) #11
  %1383 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 16
  %1384 = load i32, ptr %1383, align 4
  %1385 = icmp eq i32 %1384, 163
  %1386 = icmp ult i32 %1, 500001
  %1387 = and i1 %1386, %1385
  br i1 %1387, label %1388, label %1390

1388:                                             ; preds = %1377
  %1389 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 20
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1389, i32 noundef 6, i32 noundef 6)
  br label %1390

1390:                                             ; preds = %1388, %1377
  %1391 = call i32 @nvkm_gpio_get(ptr noundef %28, i32 noundef 0, i8 noundef zeroext 24, i8 noundef zeroext -1) #11
  %1392 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 10
  %1393 = load i32, ptr %1392, align 4
  %1394 = icmp eq i32 %1391, %1393
  br i1 %1394, label %1395, label %1429

1395:                                             ; preds = %1390
  %1396 = load i32, ptr %1307, align 4
  %1397 = load i32, ptr %1221, align 4
  %1398 = icmp eq i32 %1396, %1397
  br i1 %1398, label %1399, label %1402

1399:                                             ; preds = %1395
  %1400 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 4, i32 5
  %1401 = load i32, ptr %1400, align 4
  br label %1413

1402:                                             ; preds = %1395
  %1403 = load ptr, ptr %1224, align 4
  %1404 = getelementptr inbounds %struct.nvkm_fb, ptr %1403, i32 0, i32 1, i32 1
  %1405 = load ptr, ptr %1404, align 4
  %1406 = getelementptr inbounds %struct.nvkm_device, ptr %1405, i32 0, i32 11
  %1407 = load ptr, ptr %1406, align 4
  %1408 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 4, i32 2
  %1409 = load i32, ptr %1408, align 4
  %1410 = getelementptr i8, ptr %1407, i32 %1409
  %1411 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1410) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1412 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 4, i32 5
  store i32 %1411, ptr %1412, align 4
  br label %1413

1413:                                             ; preds = %1402, %1399
  %1414 = phi i32 [ %1401, %1399 ], [ %1411, %1402 ]
  %1415 = and i32 %1414, 9
  %1416 = icmp eq i32 %1415, 1
  br i1 %1416, label %1417, label %1418

1417:                                             ; preds = %1413
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1307, i32 noundef 8, i32 noundef 8)
  br label %1418

1418:                                             ; preds = %1417, %1413
  %1419 = and i32 %1414, 1
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1425, label %1421

1421:                                             ; preds = %1418
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1307, i32 noundef 1, i32 noundef 0)
  %1422 = load i32, ptr %1392, align 4
  %1423 = icmp eq i32 %1422, 0
  %1424 = zext i1 %1423 to i32
  call fastcc void @gt215_ram_gpio(ptr noundef %18, i8 noundef zeroext 24, i32 noundef %1424)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1307, i32 noundef 1, i32 noundef 1)
  br label %1429

1425:                                             ; preds = %1418
  %1426 = load i32, ptr %1392, align 4
  %1427 = icmp eq i32 %1426, 0
  %1428 = zext i1 %1427 to i32
  call fastcc void @gt215_ram_gpio(ptr noundef %18, i8 noundef zeroext 24, i32 noundef %1428)
  br label %1429

1429:                                             ; preds = %1425, %1421, %1390
  br i1 %1332, label %1430, label %1434

1430:                                             ; preds = %1429
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1307, i32 noundef 4, i32 noundef 4)
  %1431 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 8
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1431, i32 noundef 4141377, i32 noundef 536833)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1307, i32 noundef 8, i32 noundef 8)
  %1432 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 30
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1432, i32 noundef 557056, i32 noundef 557056)
  %1433 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 6
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1433, i32 noundef 4096)
  call fastcc void @gt215_ram_lock_pll(ptr noundef %18, ptr noundef nonnull %13)
  br label %1434

1434:                                             ; preds = %1430, %1429
  %1435 = load i32, ptr %1329, align 4
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1438, label %1437

1437:                                             ; preds = %1434
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1307, i32 noundef 261, i32 noundef 261)
  br label %1443

1438:                                             ; preds = %1434
  %1439 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 8
  %1440 = load i32, ptr %13, align 4
  %1441 = or i32 %1440, 257
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1439, i32 noundef 4141377, i32 noundef %1441)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1307, i32 noundef 264, i32 noundef 8)
  %1442 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 30
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1442, i32 noundef 557056, i32 noundef 557056)
  br label %1443

1443:                                             ; preds = %1438, %1437
  %1444 = phi i32 [ 36864, %1438 ], [ 4096, %1437 ]
  %1445 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 6
  %1446 = or i32 %1306, %1444
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1445, i32 noundef %1446)
  %1447 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 28
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1447, i32 noundef %1301)
  %1448 = load ptr, ptr %18, align 4
  call void @nvkm_memx_nsec(ptr noundef %1448, i32 noundef 20000) #11
  %1449 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 4
  %1450 = load i8, ptr %1449, align 4
  %1451 = and i8 %1450, 2
  %1452 = icmp eq i8 %1451, 0
  br i1 %1452, label %1479, label %1453

1453:                                             ; preds = %1443
  %1454 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 18
  %1455 = load i32, ptr %1333, align 4
  %1456 = lshr i32 %1455, 3
  %1457 = and i32 %1456, 16711680
  %1458 = lshr i32 %1455, 11
  %1459 = and i32 %1458, 255
  %1460 = shl nuw nsw i32 %1459, 8
  %1461 = or i32 %1460, %1457
  %1462 = or i32 %1461, %1459
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1454, i32 noundef %1462)
  %1463 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 19
  %1464 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 11, i32 0, i32 1
  %1465 = load i32, ptr %1464, align 4
  %1466 = and i32 %1465, 65535
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1463, i32 noundef %1466)
  %1467 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29
  %1468 = load i32, ptr %1464, align 4
  %1469 = and i32 %1468, 15728640
  %1470 = load i32, ptr %1333, align 4
  %1471 = shl i32 %1470, 10
  %1472 = and i32 %1471, 983040
  %1473 = lshr i32 %1468, 16
  %1474 = and i32 %1473, 15
  %1475 = or i32 %1469, %1474
  %1476 = or i32 %1475, %1472
  %1477 = or i32 %1476, -2147483648
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1467, i32 noundef %1477)
  %1478 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 17
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1478, i32 noundef 4096, i32 noundef 0)
  br label %1499

1479:                                             ; preds = %1443
  %1480 = load i32, ptr %19, align 4
  %1481 = icmp eq i32 %1480, 4
  br i1 %1481, label %1482, label %1493

1482:                                             ; preds = %1479
  %1483 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 9
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1483, i32 noundef 4128)
  %1484 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 34
  %1485 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 3
  %1486 = load i32, ptr %1485, align 4
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1484, i32 noundef -1, i32 noundef %1486)
  %1487 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 33
  %1488 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 2
  %1489 = load i32, ptr %1488, align 4
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1487, i32 noundef -1, i32 noundef %1489)
  %1490 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 24
  %1491 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 2, i32 1
  %1492 = load i32, ptr %1491, align 4
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1490, i32 noundef -1, i32 noundef %1492)
  br label %1493

1493:                                             ; preds = %1482, %1479
  %1494 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 17
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1494, i32 noundef 4096, i32 noundef 4096)
  %1495 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 29
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1495, i32 noundef -2147483648, i32 noundef 0)
  %1496 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 25
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1496, i32 noundef 572662306, i32 noundef %1300)
  %1497 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 26
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1497, i32 noundef 572662306, i32 noundef %1300)
  %1498 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 27
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1498, i32 noundef 572662306, i32 noundef %1300)
  br label %1499

1499:                                             ; preds = %1493, %1453
  %1500 = load i32, ptr %1383, align 4
  %1501 = icmp eq i32 %1500, 163
  %1502 = icmp ugt i32 %1, 500000
  %1503 = and i1 %1502, %1501
  br i1 %1503, label %1504, label %1506

1504:                                             ; preds = %1499
  %1505 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 20
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1505, i32 noundef 6, i32 noundef 0)
  br label %1506

1506:                                             ; preds = %1504, %1499
  %1507 = load i32, ptr %1329, align 4
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1511, label %1509

1509:                                             ; preds = %1506
  %1510 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 30
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1510, i32 noundef 557056, i32 noundef 69632)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1307, i32 noundef 8, i32 noundef 0)
  br label %1511

1511:                                             ; preds = %1509, %1506
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1381, i32 noundef 0)
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1378, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1380, i32 noundef -2147483648)
  %1512 = load ptr, ptr %18, align 4
  call void @nvkm_memx_nsec(ptr noundef %1512, i32 noundef 2000) #11
  br label %1513

1513:                                             ; preds = %1564, %1511
  %1514 = phi i32 [ 2, %1511 ], [ %1565, %1564 ]
  %1515 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 %1514
  %1516 = load i32, ptr %1515, align 4
  %1517 = load i32, ptr %1221, align 4
  %1518 = icmp eq i32 %1516, %1517
  br i1 %1518, label %1519, label %1522

1519:                                             ; preds = %1513
  %1520 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 %1514, i32 5
  %1521 = load i32, ptr %1520, align 4
  br label %1533

1522:                                             ; preds = %1513
  %1523 = load ptr, ptr %1224, align 4
  %1524 = getelementptr inbounds %struct.nvkm_fb, ptr %1523, i32 0, i32 1, i32 1
  %1525 = load ptr, ptr %1524, align 4
  %1526 = getelementptr inbounds %struct.nvkm_device, ptr %1525, i32 0, i32 11
  %1527 = load ptr, ptr %1526, align 4
  %1528 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 %1514, i32 2
  %1529 = load i32, ptr %1528, align 4
  %1530 = getelementptr i8, ptr %1527, i32 %1529
  %1531 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1530) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1532 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 %1514, i32 5
  store i32 %1531, ptr %1532, align 4
  br label %1533

1533:                                             ; preds = %1522, %1519
  %1534 = phi i32 [ %1521, %1519 ], [ %1531, %1522 ]
  %1535 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 %1514
  %1536 = load i32, ptr %1535, align 4
  %1537 = icmp eq i32 %1534, %1536
  br i1 %1537, label %1564, label %1538

1538:                                             ; preds = %1533
  %1539 = load i32, ptr %1221, align 4
  store i32 %1539, ptr %1515, align 4
  %1540 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 %1514, i32 5
  store i32 %1536, ptr %1540, align 4
  %1541 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 %1514, i32 4
  %1542 = load i32, ptr %1541, align 4
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1562, label %1544

1544:                                             ; preds = %1538
  %1545 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 %1514, i32 2
  %1546 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 36, i32 %1514, i32 3
  br label %1547

1547:                                             ; preds = %1557, %1544
  %1548 = phi i32 [ 0, %1544 ], [ %1559, %1557 ]
  %1549 = phi i32 [ %1542, %1544 ], [ %1560, %1557 ]
  %1550 = and i32 %1549, 1
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1557, label %1552

1552:                                             ; preds = %1547
  %1553 = load ptr, ptr %18, align 4
  %1554 = load i32, ptr %1545, align 4
  %1555 = add i32 %1554, %1548
  %1556 = load i32, ptr %1540, align 4
  call void @nvkm_memx_wr32(ptr noundef %1553, i32 noundef %1555, i32 noundef %1556) #11
  br label %1557

1557:                                             ; preds = %1552, %1547
  %1558 = load i32, ptr %1546, align 4
  %1559 = add i32 %1558, %1548
  %1560 = lshr i32 %1549, 1
  %1561 = icmp ult i32 %1549, 2
  br i1 %1561, label %1562, label %1547

1562:                                             ; preds = %1557, %1538
  %1563 = load ptr, ptr %18, align 4
  call void @nvkm_memx_nsec(ptr noundef %1563, i32 noundef 1000) #11
  br label %1564

1564:                                             ; preds = %1562, %1533
  %1565 = add nsw i32 %1514, -1
  %1566 = icmp sgt i32 %1514, 0
  br i1 %1566, label %1513, label %1567

1567:                                             ; preds = %1564
  %1568 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 12
  %1569 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 12, i32 3
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1569, i32 noundef %1134)
  %1570 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 12, i32 1
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1570, i32 noundef %1117)
  %1571 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 12, i32 6
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1571, i32 noundef %1175)
  %1572 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 12, i32 7
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1572, i32 noundef %1183)
  %1573 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 12, i32 2
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1573, i32 noundef %1125)
  %1574 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 12, i32 4
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1574, i32 noundef %1143)
  %1575 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 12, i32 5
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1575, i32 noundef %1163)
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1568, i32 noundef %1096)
  %1576 = getelementptr %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 12, i32 8
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1576, i32 noundef %1191)
  %1577 = load i32, ptr %1333, align 4
  %1578 = shl i32 %1577, 9
  %1579 = and i32 %1578, 4096
  %1580 = xor i32 %1579, 4096
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1342, i32 noundef 4096, i32 noundef %1580)
  %1581 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 21
  %1582 = load i32, ptr %1581, align 4
  %1583 = load i32, ptr %1221, align 4
  %1584 = icmp eq i32 %1582, %1583
  br i1 %1584, label %1585, label %1588

1585:                                             ; preds = %1567
  %1586 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 21, i32 5
  %1587 = load i32, ptr %1586, align 4
  br label %1600

1588:                                             ; preds = %1567
  %1589 = load ptr, ptr %1224, align 4
  %1590 = getelementptr inbounds %struct.nvkm_fb, ptr %1589, i32 0, i32 1, i32 1
  %1591 = load ptr, ptr %1590, align 4
  %1592 = getelementptr inbounds %struct.nvkm_device, ptr %1591, i32 0, i32 11
  %1593 = load ptr, ptr %1592, align 4
  %1594 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 21, i32 2
  %1595 = load i32, ptr %1594, align 4
  %1596 = getelementptr i8, ptr %1593, i32 %1595
  %1597 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1596) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1598 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 21, i32 5
  store i32 %1597, ptr %1598, align 4
  %1599 = load i32, ptr %1221, align 4
  br label %1600

1600:                                             ; preds = %1588, %1585
  %1601 = phi i32 [ %1582, %1585 ], [ %1599, %1588 ]
  %1602 = phi i32 [ %1587, %1585 ], [ %1597, %1588 ]
  %1603 = and i32 %1602, 268435151
  %1604 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 22
  %1605 = load i32, ptr %1604, align 4
  %1606 = icmp eq i32 %1605, %1601
  br i1 %1606, label %1607, label %1610

1607:                                             ; preds = %1600
  %1608 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 22, i32 5
  %1609 = load i32, ptr %1608, align 4
  br label %1622

1610:                                             ; preds = %1600
  %1611 = load ptr, ptr %1224, align 4
  %1612 = getelementptr inbounds %struct.nvkm_fb, ptr %1611, i32 0, i32 1, i32 1
  %1613 = load ptr, ptr %1612, align 4
  %1614 = getelementptr inbounds %struct.nvkm_device, ptr %1613, i32 0, i32 11
  %1615 = load ptr, ptr %1614, align 4
  %1616 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 22, i32 2
  %1617 = load i32, ptr %1616, align 4
  %1618 = getelementptr i8, ptr %1615, i32 %1617
  %1619 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1618) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1620 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 22, i32 5
  store i32 %1619, ptr %1620, align 4
  %1621 = load i32, ptr %1221, align 4
  br label %1622

1622:                                             ; preds = %1610, %1607
  %1623 = phi i32 [ %1601, %1607 ], [ %1621, %1610 ]
  %1624 = phi i32 [ %1609, %1607 ], [ %1619, %1610 ]
  %1625 = and i32 %1624, -257
  %1626 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 23
  %1627 = load i32, ptr %1626, align 4
  %1628 = icmp eq i32 %1627, %1623
  br i1 %1628, label %1629, label %1632

1629:                                             ; preds = %1622
  %1630 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 23, i32 5
  %1631 = load i32, ptr %1630, align 4
  br label %1644

1632:                                             ; preds = %1622
  %1633 = load ptr, ptr %1224, align 4
  %1634 = getelementptr inbounds %struct.nvkm_fb, ptr %1633, i32 0, i32 1, i32 1
  %1635 = load ptr, ptr %1634, align 4
  %1636 = getelementptr inbounds %struct.nvkm_device, ptr %1635, i32 0, i32 11
  %1637 = load ptr, ptr %1636, align 4
  %1638 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 23, i32 2
  %1639 = load i32, ptr %1638, align 4
  %1640 = getelementptr i8, ptr %1637, i32 %1639
  %1641 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1640) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1642 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 23, i32 5
  store i32 %1641, ptr %1642, align 4
  %1643 = load i32, ptr %1221, align 4
  br label %1644

1644:                                             ; preds = %1632, %1629
  %1645 = phi i32 [ %1623, %1629 ], [ %1643, %1632 ]
  %1646 = phi i32 [ %1631, %1629 ], [ %1641, %1632 ]
  %1647 = and i32 %1646, -257
  %1648 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 31
  %1649 = load i32, ptr %1648, align 4
  %1650 = icmp eq i32 %1649, %1645
  br i1 %1650, label %1651, label %1654

1651:                                             ; preds = %1644
  %1652 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 31, i32 5
  %1653 = load i32, ptr %1652, align 4
  br label %1665

1654:                                             ; preds = %1644
  %1655 = load ptr, ptr %1224, align 4
  %1656 = getelementptr inbounds %struct.nvkm_fb, ptr %1655, i32 0, i32 1, i32 1
  %1657 = load ptr, ptr %1656, align 4
  %1658 = getelementptr inbounds %struct.nvkm_device, ptr %1657, i32 0, i32 11
  %1659 = load ptr, ptr %1658, align 4
  %1660 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 31, i32 2
  %1661 = load i32, ptr %1660, align 4
  %1662 = getelementptr i8, ptr %1659, i32 %1661
  %1663 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1662) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %1664 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 31, i32 5
  store i32 %1663, ptr %1664, align 4
  br label %1665

1665:                                             ; preds = %1654, %1651
  %1666 = phi i32 [ %1653, %1651 ], [ %1663, %1654 ]
  %1667 = and i32 %1666, -981467137
  %1668 = load i32, ptr %1383, align 4
  %1669 = icmp eq i32 %1668, 168
  br i1 %1669, label %1670, label %1677

1670:                                             ; preds = %1665
  %1671 = or i32 %1667, 134217728
  %1672 = load i32, ptr %1333, align 4
  %1673 = shl i32 %1672, 2
  %1674 = and i32 %1673, 16
  %1675 = or i32 %1674, %1603
  %1676 = xor i32 %1675, 16
  br label %1704

1677:                                             ; preds = %1665
  %1678 = load i32, ptr %1333, align 4
  %1679 = and i32 %1678, 4
  %1680 = icmp eq i32 %1679, 0
  %1681 = load i32, ptr %1062, align 8
  br i1 %1680, label %1693, label %1682

1682:                                             ; preds = %1677
  %1683 = add i32 %1681, -5
  %1684 = icmp ult i32 %1683, 2
  br i1 %1684, label %1685, label %1704

1685:                                             ; preds = %1682
  %1686 = and i32 %1666, -981467169
  %1687 = and i32 %1678, 16
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1691, label %1689

1689:                                             ; preds = %1685
  %1690 = or i32 %1686, 134217732
  br label %1704

1691:                                             ; preds = %1685
  %1692 = or i32 %1686, 36
  br label %1704

1693:                                             ; preds = %1677
  switch i32 %1681, label %1704 [
    i32 5, label %1694
    i32 6, label %1694
    i32 8, label %1701
  ]

1694:                                             ; preds = %1693, %1693
  %1695 = and i32 %1666, -981467173
  %1696 = and i32 %1678, 16
  %1697 = icmp eq i32 %1696, 0
  %1698 = select i1 %1697, i32 310378496, i32 444596224
  %1699 = or i32 %1698, %1695
  %1700 = or i32 %1603, 16
  br label %1704

1701:                                             ; preds = %1693
  %1702 = or i32 %1667, 805306368
  %1703 = or i32 %1603, 32
  br label %1704

1704:                                             ; preds = %1701, %1694, %1693, %1691, %1689, %1682, %1670
  %1705 = phi i32 [ %1678, %1682 ], [ %1678, %1689 ], [ %1678, %1691 ], [ %1678, %1693 ], [ %1678, %1701 ], [ %1678, %1694 ], [ %1672, %1670 ]
  %1706 = phi i32 [ %1667, %1682 ], [ %1690, %1689 ], [ %1692, %1691 ], [ %1667, %1693 ], [ %1702, %1701 ], [ %1699, %1694 ], [ %1671, %1670 ]
  %1707 = phi i32 [ %1603, %1682 ], [ %1603, %1689 ], [ %1603, %1691 ], [ %1603, %1693 ], [ %1703, %1701 ], [ %1700, %1694 ], [ %1676, %1670 ]
  %1708 = lshr i32 %1705, 2
  %1709 = and i32 %1708, 256
  %1710 = or i32 %1709, %1707
  %1711 = and i32 %1705, 32
  %1712 = icmp eq i32 %1711, 0
  %1713 = or i32 %1710, -268435456
  %1714 = select i1 %1712, i32 %1710, i32 %1713
  %1715 = shl i32 %1705, 7
  %1716 = and i32 %1715, 256
  %1717 = or i32 %1716, %1625
  %1718 = shl i32 %1705, 8
  %1719 = and i32 %1718, 256
  %1720 = or i32 %1719, %1647
  %1721 = load i64, ptr %1058, align 4
  %1722 = lshr i64 %1721, 40
  %1723 = trunc i64 %1722 to i32
  %1724 = and i32 %1723, 255
  %1725 = icmp eq i32 %1724, 255
  %1726 = and i32 %1717, 268435455
  %1727 = shl i32 %1723, 28
  %1728 = or i32 %1726, %1727
  %1729 = select i1 %1725, i32 %1717, i32 %1728
  %1730 = and i32 %1705, 16
  %1731 = icmp eq i32 %1730, 0
  %1732 = and i32 %1706, -67239937
  %1733 = select i1 %1731, i32 %1706, i32 %1732
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1581, i32 noundef -1, i32 noundef %1714)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1626, i32 noundef -1, i32 noundef %1720)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1604, i32 noundef -1, i32 noundef %1729)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1648, i32 noundef -1, i32 noundef %1733)
  %1734 = load i96, ptr %1057, align 4
  %1735 = and i96 %1734, 2166395068749415481073467392
  %1736 = icmp eq i96 %1735, 0
  br i1 %1736, label %1737, label %1738

1737:                                             ; preds = %1704
  call fastcc void @gt215_ram_gpio(ptr noundef %18, i8 noundef zeroext 46, i32 noundef 0)
  br label %1738

1738:                                             ; preds = %1737, %1704
  %1739 = load i32, ptr %1302, align 4
  %1740 = icmp eq i32 %1739, 0
  br i1 %1740, label %1741, label %1742

1741:                                             ; preds = %1738
  call fastcc void @nvkm_sddr2_dll_reset(ptr noundef %18)
  br label %1742

1742:                                             ; preds = %1741, %1738
  %1743 = load i32, ptr %1062, align 8
  %1744 = icmp eq i32 %1743, 8
  %1745 = load ptr, ptr %18, align 4
  %1746 = select i1 %1744, i32 31000, i32 14000
  call void @nvkm_memx_nsec(ptr noundef %1745, i32 noundef %1746) #11
  %1747 = load i32, ptr %1062, align 8
  %1748 = icmp eq i32 %1747, 6
  br i1 %1748, label %1749, label %1752

1749:                                             ; preds = %1742
  %1750 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 13
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1750, i32 noundef 1)
  %1751 = load ptr, ptr %18, align 4
  call void @nvkm_memx_nsec(ptr noundef %1751, i32 noundef 2000) #11
  br label %1752

1752:                                             ; preds = %1749, %1742
  %1753 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 20
  %1754 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 20, i32 1
  store i8 1, ptr %1754, align 4
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1753, i32 noundef 16777216, i32 noundef 16777216)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1753, i32 noundef 16777216, i32 noundef 0)
  %1755 = load ptr, ptr %18, align 4
  call void @nvkm_memx_unblock(ptr noundef %1755) #11
  call fastcc void @ramfuc_wr32(ptr noundef %18, ptr noundef %1352, i32 noundef 13104)
  %1756 = load i8, ptr %1449, align 4
  %1757 = and i8 %1756, 1
  %1758 = icmp eq i8 %1757, 0
  br i1 %1758, label %1760, label %1759

1759:                                             ; preds = %1752
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1342, i32 noundef 2048, i32 noundef 2048)
  br label %1760

1760:                                             ; preds = %1759, %1752
  %1761 = load i32, ptr %1333, align 4
  %1762 = and i32 %1761, 16
  %1763 = icmp eq i32 %1762, 0
  %1764 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 32
  br i1 %1763, label %1766, label %1765

1765:                                             ; preds = %1760
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1764, i32 noundef 384, i32 noundef 384)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1648, i32 noundef 1073741824, i32 noundef 0)
  br label %1767

1766:                                             ; preds = %1760
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1764, i32 noundef 1536, i32 noundef 1536)
  br label %1767

1767:                                             ; preds = %1766, %1765
  %1768 = load i32, ptr %1329, align 4
  %1769 = icmp eq i32 %1768, 0
  br i1 %1769, label %1772, label %1770

1770:                                             ; preds = %1767
  %1771 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 8
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1771, i32 noundef 1, i32 noundef 0)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1771, i32 noundef 256, i32 noundef 0)
  br label %1774

1772:                                             ; preds = %1767
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1307, i32 noundef 1, i32 noundef 0)
  %1773 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 7
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1773, i32 noundef 1, i32 noundef 0)
  call fastcc void @ramfuc_mask(ptr noundef %18, ptr noundef %1773, i32 noundef 256, i32 noundef 0)
  br label %1774

1774:                                             ; preds = %1772, %1770, %1294, %1284, %1212, %1035, %1031, %1021, %1017, %999, %995, %977, %973, %964, %960
  %1775 = phi i32 [ -22, %964 ], [ -22, %960 ], [ -22, %977 ], [ -22, %973 ], [ -22, %999 ], [ -22, %995 ], [ -22, %1021 ], [ -22, %1017 ], [ %1029, %1035 ], [ %1029, %1031 ], [ %1295, %1294 ], [ 0, %1772 ], [ 0, %1770 ], [ %1218, %1212 ], [ -38, %1284 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  ret i32 %1775
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt215_ram_prog(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_fb, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %8, ptr noundef nonnull @.str.5, i1 noundef zeroext true) #11
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 5428
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %15 = or i32 %14, 2
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 5428
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #11, !srcloc !10
  %18 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  %22 = tail call i32 @nvkm_memx_fini(ptr noundef %2, i1 noundef zeroext true) #11
  store ptr null, ptr %18, align 4
  br label %23

23:                                               ; preds = %21, %10
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr i8, ptr %24, i32 9476
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %27 = and i32 %26, -2
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr i8, ptr %28, i32 9476
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #11, !srcloc !10
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr i8, ptr %30, i32 5428
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %33 = and i32 %32, -3
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr i8, ptr %34, i32 5428
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #11, !srcloc !10
  %36 = load ptr, ptr %11, align 4
  %37 = getelementptr i8, ptr %36, i32 6382344
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %39 = or i32 %38, 16
  %40 = load ptr, ptr %11, align 4
  %41 = getelementptr i8, ptr %40, i32 6382344
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #11, !srcloc !10
  %42 = load ptr, ptr %11, align 4
  %43 = getelementptr i8, ptr %42, i32 6384392
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %45 = or i32 %44, 16
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr i8, ptr %46, i32 6384392
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #11, !srcloc !10
  br label %54

48:                                               ; preds = %1
  %49 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @nvkm_memx_fini(ptr noundef %2, i1 noundef zeroext false) #11
  store ptr null, ptr %49, align 4
  br label %54

54:                                               ; preds = %52, %48, %23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gt215_ram_tidy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gt215_ram, ptr %0, i32 0, i32 1
  %7 = tail call i32 @nvkm_memx_fini(ptr noundef %6, i1 noundef zeroext false) #11
  store ptr null, ptr %2, align 4
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0205Ep(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapEm(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_ramcfg_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapSp(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_timingEp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sddr2_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sddr3_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gddr3_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ramfuc_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 {
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
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
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
  %32 = load i8, ptr %31, align 4, !range !13
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
  tail call void @nvkm_memx_wr32(ptr noundef %49, i32 noundef %51, i32 noundef %52) #11
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gt215_ram_lock_pll(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.gt215_clk_info, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 5, i32 5
  store i32 %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 5, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 5, i32 2
  %14 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 5, i32 3
  br label %15

15:                                               ; preds = %25, %12
  %16 = phi i32 [ 0, %12 ], [ %27, %25 ]
  %17 = phi i32 [ %10, %12 ], [ %28, %25 ]
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %0, align 4
  %22 = load i32, ptr %13, align 4
  %23 = add i32 %22, %16
  %24 = load i32, ptr %8, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %21, i32 noundef %23, i32 noundef %24) #11
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, ptr %14, align 4
  %27 = add i32 %26, %16
  %28 = lshr i32 %17, 1
  %29 = icmp ult i32 %17, 2
  br i1 %29, label %30, label %15

30:                                               ; preds = %25
  %31 = load i32, ptr %6, align 4
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi i32 [ %31, %30 ], [ %7, %2 ]
  %34 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %33
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 5
  %39 = load i32, ptr %38, align 4
  br label %52

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_fb, ptr %42, i32 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %51 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 5
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %40, %37
  %53 = phi i32 [ %39, %37 ], [ %50, %40 ]
  %54 = or i32 %53, 1
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 1
  %58 = load i8, ptr %57, align 4, !range !13
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %86, label %60

60:                                               ; preds = %56, %52
  %61 = load i32, ptr %6, align 4
  store i32 %61, ptr %34, align 4
  %62 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 5
  store i32 %54, ptr %62, align 4
  %63 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 2
  %68 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 3
  br label %69

69:                                               ; preds = %79, %66
  %70 = phi i32 [ 0, %66 ], [ %81, %79 ]
  %71 = phi i32 [ %64, %66 ], [ %82, %79 ]
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr %0, align 4
  %76 = load i32, ptr %67, align 4
  %77 = add i32 %76, %70
  %78 = load i32, ptr %62, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %75, i32 noundef %77, i32 noundef %78) #11
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32, ptr %68, align 4
  %81 = add i32 %80, %70
  %82 = lshr i32 %71, 1
  %83 = icmp ult i32 %71, 2
  br i1 %83, label %84, label %69

84:                                               ; preds = %79, %60
  %85 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 1
  store i8 0, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %56
  %87 = load i32, ptr %34, align 4
  %88 = load i32, ptr %6, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 5
  %92 = load i32, ptr %91, align 4
  br label %105

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_fb, ptr %95, i32 0, i32 1, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 11
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr i8, ptr %99, i32 %101
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %104 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 5
  store i32 %103, ptr %104, align 4
  br label %105

105:                                              ; preds = %93, %90
  %106 = phi i32 [ %92, %90 ], [ %103, %93 ]
  %107 = and i32 %106, -17
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 1
  %111 = load i8, ptr %110, align 4, !range !13
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %139, label %113

113:                                              ; preds = %109, %105
  %114 = load i32, ptr %6, align 4
  store i32 %114, ptr %34, align 4
  %115 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 5
  store i32 %107, ptr %115, align 4
  %116 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %137, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 2
  %121 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 3
  br label %122

122:                                              ; preds = %132, %119
  %123 = phi i32 [ 0, %119 ], [ %134, %132 ]
  %124 = phi i32 [ %117, %119 ], [ %135, %132 ]
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load ptr, ptr %0, align 4
  %129 = load i32, ptr %120, align 4
  %130 = add i32 %129, %123
  %131 = load i32, ptr %115, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %128, i32 noundef %130, i32 noundef %131) #11
  br label %132

132:                                              ; preds = %127, %122
  %133 = load i32, ptr %121, align 4
  %134 = add i32 %133, %123
  %135 = lshr i32 %124, 1
  %136 = icmp ult i32 %124, 2
  br i1 %136, label %137, label %122

137:                                              ; preds = %132, %113
  %138 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 1
  store i8 0, ptr %138, align 4
  br label %139

139:                                              ; preds = %137, %109
  %140 = load ptr, ptr %0, align 4
  tail call void @nvkm_memx_wait(ptr noundef %140, i32 noundef 16384, i32 noundef 131072, i32 noundef 131072, i32 noundef 64000) #11
  %141 = load i32, ptr %34, align 4
  %142 = load i32, ptr %6, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 5
  %146 = load i32, ptr %145, align 4
  br label %159

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.nvkm_fb, ptr %149, i32 0, i32 1, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.nvkm_device, ptr %151, i32 0, i32 11
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr i8, ptr %153, i32 %155
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %158 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 5
  store i32 %157, ptr %158, align 4
  br label %159

159:                                              ; preds = %147, %144
  %160 = phi i32 [ %146, %144 ], [ %157, %147 ]
  %161 = or i32 %160, 16
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 1
  %165 = load i8, ptr %164, align 4, !range !13
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %193, label %167

167:                                              ; preds = %163, %159
  %168 = load i32, ptr %6, align 4
  store i32 %168, ptr %34, align 4
  %169 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 5
  store i32 %161, ptr %169, align 4
  %170 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 4
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %191, label %173

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 2
  %175 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 3
  br label %176

176:                                              ; preds = %186, %173
  %177 = phi i32 [ 0, %173 ], [ %188, %186 ]
  %178 = phi i32 [ %171, %173 ], [ %189, %186 ]
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load ptr, ptr %0, align 4
  %183 = load i32, ptr %174, align 4
  %184 = add i32 %183, %177
  %185 = load i32, ptr %169, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %182, i32 noundef %184, i32 noundef %185) #11
  br label %186

186:                                              ; preds = %181, %176
  %187 = load i32, ptr %175, align 4
  %188 = add i32 %187, %177
  %189 = lshr i32 %178, 1
  %190 = icmp ult i32 %178, 2
  br i1 %190, label %191, label %176

191:                                              ; preds = %186, %167
  %192 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 4, i32 1
  store i8 0, ptr %192, align 4
  br label %193

193:                                              ; preds = %191, %163
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ramfuc_wr32(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #8 {
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
  tail call void @nvkm_memx_wr32(ptr noundef %19, i32 noundef %21, i32 noundef %22) #11
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_sddr3_dll_disable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 5
  %10 = load i32, ptr %9, align 4
  br label %23

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_fb, ptr %13, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %22 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 5
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %11, %8
  %24 = phi i32 [ %10, %8 ], [ %21, %11 ]
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %82

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 15
  %29 = load i32, ptr %5, align 4
  store i32 %29, ptr %28, align 4
  %30 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 15, i32 5
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 15, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 15, i32 2
  %36 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 15, i32 3
  br label %37

37:                                               ; preds = %47, %34
  %38 = phi i32 [ 0, %34 ], [ %49, %47 ]
  %39 = phi i32 [ %32, %34 ], [ %50, %47 ]
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %0, align 4
  %44 = load i32, ptr %35, align 4
  %45 = add i32 %44, %38
  %46 = load i32, ptr %30, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %43, i32 noundef %45, i32 noundef %46) #11
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, ptr %36, align 4
  %49 = add i32 %48, %38
  %50 = lshr i32 %39, 1
  %51 = icmp ult i32 %39, 2
  br i1 %51, label %52, label %37

52:                                               ; preds = %47
  %53 = load i32, ptr %5, align 4
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %29, %27 ]
  %56 = getelementptr i32, ptr %1, i32 1
  %57 = load i32, ptr %56, align 4
  store i32 %55, ptr %3, align 4
  %58 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 5
  store i32 %57, ptr %58, align 4
  %59 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %54
  %63 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 2
  %64 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 3
  br label %65

65:                                               ; preds = %75, %62
  %66 = phi i32 [ 0, %62 ], [ %77, %75 ]
  %67 = phi i32 [ %60, %62 ], [ %78, %75 ]
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %0, align 4
  %72 = load i32, ptr %63, align 4
  %73 = add i32 %72, %66
  %74 = load i32, ptr %58, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %71, i32 noundef %73, i32 noundef %74) #11
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, ptr %64, align 4
  %77 = add i32 %76, %66
  %78 = lshr i32 %67, 1
  %79 = icmp ult i32 %67, 2
  br i1 %79, label %80, label %65

80:                                               ; preds = %75, %54
  %81 = load ptr, ptr %0, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %81, i32 noundef 1000) #11
  br label %82

82:                                               ; preds = %80, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_gddr3_dll_disable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 5
  %10 = load i32, ptr %9, align 4
  br label %23

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_fb, ptr %13, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %22 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 5
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %11, %8
  %24 = phi i32 [ %10, %8 ], [ %21, %11 ]
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = getelementptr i32, ptr %1, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %5, align 4
  store i32 %30, ptr %3, align 4
  %31 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 5
  store i32 %29, ptr %31, align 4
  %32 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %27
  %36 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 2
  %37 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 1, i32 3
  br label %38

38:                                               ; preds = %48, %35
  %39 = phi i32 [ 0, %35 ], [ %50, %48 ]
  %40 = phi i32 [ %33, %35 ], [ %51, %48 ]
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %0, align 4
  %45 = load i32, ptr %36, align 4
  %46 = add i32 %45, %39
  %47 = load i32, ptr %31, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %44, i32 noundef %46, i32 noundef %47) #11
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, ptr %37, align 4
  %50 = add i32 %49, %39
  %51 = lshr i32 %40, 1
  %52 = icmp ult i32 %40, 2
  br i1 %52, label %53, label %38

53:                                               ; preds = %48, %27
  %54 = load ptr, ptr %0, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %54, i32 noundef 1000) #11
  br label %55

55:                                               ; preds = %53, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gt215_ram_gpio(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.dcb_gpio_func, align 1
  %5 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_fb, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !8
  %11 = tail call i32 @nvkm_gpio_get(ptr noundef %10, i32 noundef 0, i8 noundef zeroext %1, i8 noundef zeroext -1) #11
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %114, label %13

13:                                               ; preds = %3
  %14 = call i32 @nvkm_gpio_find(ptr noundef %10, i32 noundef 0, i8 noundef zeroext %1, i8 noundef zeroext -1, ptr noundef nonnull %4) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %114

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dcb_gpio_func, ptr %4, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = lshr i32 %19, 3
  %21 = shl nuw nsw i32 %19, 2
  %22 = and i32 %21, 28
  %23 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 5
  %30 = load i32, ptr %29, align 4
  br label %44

31:                                               ; preds = %16
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.nvkm_fb, ptr %32, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %41 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 5
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %23, align 4
  %43 = load i32, ptr %25, align 4
  br label %44

44:                                               ; preds = %31, %28
  %45 = phi i32 [ %24, %28 ], [ %43, %31 ]
  %46 = phi i32 [ %24, %28 ], [ %42, %31 ]
  %47 = phi i32 [ %30, %28 ], [ %40, %31 ]
  %48 = shl nuw i32 8, %22
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  %51 = icmp eq i32 %2, 0
  %52 = zext i1 %51 to i32
  %53 = select i1 %50, i32 %2, i32 %52
  %54 = getelementptr inbounds %struct.dcb_gpio_func, ptr %4, i32 0, i32 2, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  %58 = icmp eq i32 %53, 0
  %59 = zext i1 %58 to i32
  %60 = select i1 %57, i32 %59, i32 %53
  %61 = shl nuw nsw i32 3, %22
  %62 = or i32 %60, 2
  %63 = shl i32 %62, %22
  %64 = icmp eq i32 %46, %45
  br i1 %64, label %76, label %65

65:                                               ; preds = %44
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr inbounds %struct.nvkm_fb, ptr %66, i32 0, i32 1, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %70, i32 %72
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %75 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 5
  store i32 %74, ptr %75, align 4
  br label %76

76:                                               ; preds = %65, %44
  %77 = phi i32 [ %74, %65 ], [ %47, %44 ]
  %78 = xor i32 %61, -1
  %79 = and i32 %77, %78
  %80 = or i32 %79, %63
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 1
  %84 = load i8, ptr %83, align 4, !range !13
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %112, label %86

86:                                               ; preds = %82, %76
  %87 = load i32, ptr %25, align 4
  store i32 %87, ptr %23, align 4
  %88 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 5
  store i32 %80, ptr %88, align 4
  %89 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %86
  %93 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 2
  %94 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 3
  br label %95

95:                                               ; preds = %105, %92
  %96 = phi i32 [ 0, %92 ], [ %107, %105 ]
  %97 = phi i32 [ %90, %92 ], [ %108, %105 ]
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %0, align 4
  %102 = load i32, ptr %93, align 4
  %103 = add i32 %102, %96
  %104 = load i32, ptr %88, align 4
  call void @nvkm_memx_wr32(ptr noundef %101, i32 noundef %103, i32 noundef %104) #11
  br label %105

105:                                              ; preds = %100, %95
  %106 = load i32, ptr %94, align 4
  %107 = add i32 %106, %96
  %108 = lshr i32 %97, 1
  %109 = icmp ult i32 %97, 2
  br i1 %109, label %110, label %95

110:                                              ; preds = %105, %86
  %111 = getelementptr %struct.gt215_ramfuc, ptr %0, i32 0, i32 37, i32 %20, i32 1
  store i8 0, ptr %111, align 4
  br label %112

112:                                              ; preds = %110, %82
  %113 = load ptr, ptr %0, align 4
  call void @nvkm_memx_nsec(ptr noundef %113, i32 noundef 20000) #11
  br label %114

114:                                              ; preds = %112, %13, %3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_sddr2_dll_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  br label %22

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_fb, ptr %12, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %21 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %10, %7
  %23 = phi i32 [ %9, %7 ], [ %20, %10 ]
  %24 = or i32 %23, 256
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 1
  %28 = load i8, ptr %27, align 4, !range !13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %26, %22
  %31 = load i32, ptr %4, align 4
  store i32 %31, ptr %2, align 4
  %32 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 5
  store i32 %24, ptr %32, align 4
  %33 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 3
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
  %55 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 1
  store i8 0, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %26
  %57 = load ptr, ptr %0, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %57, i32 noundef 1000) #11
  %58 = load i32, ptr %2, align 4
  %59 = load i32, ptr %4, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  br label %76

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_fb, ptr %66, i32 0, i32 1, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %70, i32 %72
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %75 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 5
  store i32 %74, ptr %75, align 4
  br label %76

76:                                               ; preds = %64, %61
  %77 = phi i32 [ %63, %61 ], [ %74, %64 ]
  %78 = and i32 %77, -257
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 1
  %82 = load i8, ptr %81, align 4, !range !13
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %80, %76
  %85 = load i32, ptr %4, align 4
  store i32 %85, ptr %2, align 4
  %86 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 5
  store i32 %78, ptr %86, align 4
  %87 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 2
  %92 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 3
  br label %93

93:                                               ; preds = %103, %90
  %94 = phi i32 [ 0, %90 ], [ %105, %103 ]
  %95 = phi i32 [ %88, %90 ], [ %106, %103 ]
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load ptr, ptr %0, align 4
  %100 = load i32, ptr %91, align 4
  %101 = add i32 %100, %94
  %102 = load i32, ptr %86, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %99, i32 noundef %101, i32 noundef %102) #11
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, ptr %92, align 4
  %105 = add i32 %104, %94
  %106 = lshr i32 %95, 1
  %107 = icmp ult i32 %95, 2
  br i1 %107, label %108, label %93

108:                                              ; preds = %103, %84
  %109 = getelementptr inbounds %struct.gt215_ramfuc, ptr %0, i32 0, i32 36, i32 0, i32 1
  store i8 0, ptr %109, align 4
  br label %110

110:                                              ; preds = %108, %80
  %111 = load ptr, ptr %0, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %111, i32 noundef 1000) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0205Tp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_clk_pre(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_clk_post(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_train(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_train_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wait_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_nsec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_unblock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!9 = !{i64 2151516451}
!10 = !{i64 3975358}
!11 = !{i64 3975776}
!12 = !{i64 2151515229}
!13 = !{i8 0, i8 2}
